module CPU( clk, reset, adr_bus, rd_mem, wr_mem, data_bus_in, data_bus_out);

	input clk;
	input reset;
	input [7:0]data_bus_in;

	output [5:0]adr_bus;
	output rd_mem;
	output wr_mem;
	output[7:0] data_bus_out;

	wire ir_on_adr;
	wire pc_on_adr;
	wire ld_ir;
	wire ld_ac;
	wire ld_pc;
	wire inc_pc;
	wire clr_pc;
	wire pass_add;
	wire sel_alu;
	wire sel_bus;

	wire [1:0] op_code;
	

	Controller cu ( clk, reset, op_code, rd_mem, wr_mem, ir_on_adr, pc_on_adr, ld_ir, ld_ac, ld_pc, inc_pc, clr_pc, pass_add, sel_alu , sel_bus );
	DataPath dp ( clk, reset, data_bus_in, ir_on_adr, pc_on_adr, ld_ir, ld_ac, ld_pc, inc_pc, clr_pc, pass_add, adr_bus, op_code, data_bus_in, data_bus_out, sel_alu , sel_bus);

endmodule