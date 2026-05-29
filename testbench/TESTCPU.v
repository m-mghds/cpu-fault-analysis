`timescale 1 ns / 1ns


module TESTCPU ();
    reg  reset = 0, data_bus_in_0 = 0;

    wire adr_bus_0, rd_mem_net_0, wr_mem_net_0, data_bus_out_0;

    CPU_net DUT (data_bus_in_0, adr_bus_0, rd_mem_net_0, wr_mem_net_0, data_bus_out_0);

    initial begin
        $FaultCollapsing (TESTCPU.DUT, "CPUFaults.flt");
        repeat (15) #73 {data_bus_in_0} = {data_bus_in_0} + 1;
    end
endmodule