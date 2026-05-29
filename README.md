# CPU Fault analysis Using Verilog and ModelSim PLI

This repository contains the **fault-analysis** of an academic Network-on-Chip / digital-system verification project, completed in **Spring 2022** by **Marziye Pandi** and **Mostafa Moghaddas**.  
The project demonstrates stuck-at fault modeling, fault collapsing, and fault injection for a simple CPU design using Verilog HDL and ModelSim/QuestaSim PLI routines.

The main goal is to evaluate how permanent stuck-at faults in a gate-level CPU netlist can be generated, injected, simulated, and detected by comparing a fault-free model against a faulty model.

## Project Scope

The implemented workflow includes:

- RTL description of a simple CPU.
- Gate-level netlist of the CPU.
- Component/gate library used by the netlist.
- Fault collapsing using a PLI routine.
- Generation/use of a collapsed stuck-at fault list.
- Fault injection into a faultable CPU instance.
- Golden-model vs faulty-model output comparison.
- Basis for fault coverage and fault dictionary construction.

## Repository Structure

A recommended structure for the repository is:

```text
cpu-fault-analysis/
├── README.md
├── rtl/
│   ├── CPU.v
│   ├── Controller.v
│   ├── DataPath.v
│   └── PC.v
├── netlist/
│   ├── netlist_CPU_V1.v
│   └── component_library.v
├── testbench/
│   ├── TESTCPU.v
│   └── Test.v
├── faults/
│   └── CPUFaults.flt
└── pli/
    ├── FaultCollapsing.dll
    └── faultInjection.dll
```

## File Description

| File | Description |
|---|---|
| `CPU.v` | Top-level RTL CPU module. |
| `Controller.v` | Controller/FSM module for CPU control signals. |
| `DataPath.v` | Datapath module containing registers, ALU-related logic, mux logic, and PC connection. |
| `PC.v` | Program counter module. |
| `netlist_CPU_V1.v` | Gate-level CPU netlist used as the circuit under test. |
| `component_library.v` | Verilog component/gate library required by the netlist. |
| `TESTCPU.v` | Testbench used for fault collapsing through `$FaultCollapsing`. |
| `CPUFaults.flt` | Collapsed stuck-at fault list generated for the CPU netlist. |
| `Test.v` | Fault-injection testbench structure using golden and faultable CPU instances. |
| `FaultCollapsing.dll` | ModelSim/QuestaSim PLI binary for fault collapsing. |
| `faultInjection.dll` | ModelSim/QuestaSim PLI binary for fault injection/removal. |

## Background

During integrated circuit design and fabrication, defects may cause internal or input wires to become permanently fixed at logic `0` or logic `1`. These are commonly modeled as:

```text
stuck-at-0  → s@0
stuck-at-1  → s@1
```

A circuit test should apply input vectors that propagate the effect of such faults to observable outputs. If the output of a faulty circuit differs from the output of the fault-free circuit, the fault is considered detected.

This project follows the standard simulation-based fault analysis flow:

```text
Circuit Under Test
        │
        ▼
Gate-Level Netlist
        │
        ▼
Fault Collapsing
        │
        ▼
Collapsed Fault List
        │
        ▼
Fault Injection
        │
        ▼
Golden Model vs Faultable Model Comparison
        │
        ▼
Detected Faults / Fault Coverage / Fault Dictionary
```

## Fault Collapsing Flow

The first step is generating a collapsed stuck-at fault list for the CPU netlist.

The testbench `TESTCPU.v` instantiates the CPU netlist as the design under test and calls the PLI function:

```verilog
$FaultCollapsing(TESTCPU.DUT, "CPUFaults.flt");
```

This produces the `CPUFaults.flt` file, which contains collapsed stuck-at faults such as:

```text
TESTCPU.DUT.pout_0.in[15] s@1
TESTCPU.DUT.pout_0.in[15] s@0
TESTCPU.DUT.FANOUT_1.in s@1
TESTCPU.DUT.FANOUT_1.in s@0
```

## Fault Injection Flow

The second step is fault simulation.

The fault-injection testbench `Test.v` creates two instances of the CPU netlist:

- `GUT`: Golden Unit Under Test, the fault-free reference model.
- `FUT`: Faultable Unit Under Test, the model into which faults are injected.

For each fault in `CPUFaults.flt`, the testbench:

1. Resets the circuit.
2. Reads one stuck-at fault from the fault list.
3. Injects the fault into the faultable model using `$InjectFault`.
4. Applies test vectors from a test-vector file.
5. Compares the golden and faultable outputs.
6. Marks the fault as detected if the outputs differ.
7. Removes the injected fault using `$RemoveFault`.
8. Continues with the next fault.

The core structure is:

```verilog
$InjectFault(wireName, stuckAtVal);

// apply test vectors
// compare golden and faulty outputs

$RemoveFault(wireName);
```

## Requirements

This project was prepared for simulation with:

- Verilog HDL
- ModelSim or QuestaSim
- PLI support enabled
- Provided PLI binaries:
  - `FaultCollapsing.dll`
  - `faultInjection.dll`

The `.dll` files are Windows binaries and may depend on the simulator version and environment.

## Example Simulation Commands

The exact commands may vary depending on your ModelSim/QuestaSim version and file locations.

### 1. Compile the design and run fault collapsing

```tcl
vlib work
vlog component_library.v
vlog netlist_CPU_V1.v
vlog TESTCPU.v
vsim -pli FaultCollapsing.dll TESTCPU
run -all
```

Expected output:

```text
CPUFaults.flt
```

### 2. Compile and run fault injection

```tcl
vlib work
vlog component_library.v
vlog netlist_CPU_V1.v
vlog Test.v
vsim -pli faultInjection.dll Tester
run -all
```

The `Test.v` testbench expects a test-vector file, for example:

```text
CPUTest.tst
```

Each line of `CPUTest.tst` should contain one binary test vector, for example:

```text
00000000
00000001
00000010
00000011
```

## Important Notes

### Testbench/netlist compatibility

Depending on the generated netlist version, the port list of `CPU_net` may differ from the instantiations inside `TESTCPU.v` and `Test.v`.

If the netlist exposes `clk` and `reset` ports, update the testbench instantiations accordingly and drive the clock/reset signals explicitly. Named-port instantiation is recommended for clarity.

Example:

```verilog
CPU_net DUT (
    .clk(clk),
    .reset(reset),
    .adr_bus(adr_bus_0),
    .rd_mem(rd_mem_net_0),
    .wr_mem(wr_mem_net_0),
    .data_bus_in(data_bus_in_0),
    .data_bus_out(data_bus_out_0)
);
```

### PLI binary redistribution

The `.dll` files are compiled PLI binaries. If they were provided by a course, instructor, or third party, check whether you are allowed to redistribute them publicly. If redistribution is not allowed, remove the `.dll` files from the public repository and explain that they are required external tools.

### Current status

This repository provides the original project files and the main fault-analysis workflow. Some parts may need minor adaptation depending on the simulator version and the generated netlist interface.
