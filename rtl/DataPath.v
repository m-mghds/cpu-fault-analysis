module DataPath ( clk, reset, data_bus_in, ir_on_adr, pc_on_adr, ld_ir, ld_ac, ld_pc, inc_pc, clr_pc, pass_add, adr_bus, op_code, data_bus_in, data_bus_out, sel_alu , sel_bus);
	

	input clk;
	input reset;
	input [7:0] data_bus_in;

	input ir_on_adr;
	input pc_on_adr;
	input ld_ir;
	input ld_ac;
	input ld_pc;
	input inc_pc;
	input clr_pc;
	input pass_add;
	input sel_alu;
	input sel_bus;

	output [5:0] adr_bus;
	output [7:0] data_bus_out;
	output [1:0] op_code;

	reg [7:0] ir_out;
	wire [5:0] pc_out;
	reg [7:0] a_side;

	wire [7:0] alu_out;
	reg [7:0] mux1_out;
	reg [5:0] mux2_out;

	wire sel_alu;
	wire sel_bus;

	wire [7:0] alu_in2;
	assign alu_in2[7:6] = 2'b00;
	assign alu_in2[5:0] =  ir_out[5:0];

	// Mux8 mux8_1  (alu_out, data_bus_in, sel_alu, sel_bus, mux1_out);
	always@(alu_out,data_bus_in , sel_alu, sel_bus) begin
        if(sel_alu== 1) begin
            mux1_out = alu_out;            
        end else if(sel_bus == 1) begin
            mux1_out = data_bus_in;            
        end
    end


	always @( posedge clk ) begin
		if(reset == 1) begin
			a_side <= 0 ;			

		end else begin
			if(ld_ac == 1) begin
				a_side <= mux1_out;	
			end			

		end
		if(ld_ir) 
			ir_out <= data_bus_in;
	end

	// assign alu_out = pass_add? a_side : a_side+alu_in2;
	// assign alu_out = a_side+alu_in2;
	assign alu_out = a_side;


	PC pc(clk, reset, ir_out[5:0], inc_pc, clr_pc, ld_pc, pc_out );

	wire [5:0] mux1_in;
	assign mux1_in = ir_out[5:0];
	always@(mux1_in, pc_out, ir_on_adr, pc_on_adr) begin
        if(ir_on_adr== 1) begin
            mux2_out = alu_out;            
        end else if(pc_on_adr == 1) begin
            mux2_out = data_bus_in;            
        end
    end

	assign data_bus_out = alu_out;
	assign op_code = ir_out[7:6];
	assign adr_bus = mux2_out;
	
endmodule


