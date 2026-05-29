`define Reset 2'b00
`define Fetch 2'b01
`define Execute 2'b11

module Controller (clk, reset, op_code, rd_mem, wr_mem, ir_on_adr, pc_on_adr, ld_ir, ld_ac, ld_pc, inc_pc, clr_pc, pass_add, sel_alu , sel_bus );

	input reset;
	input clk;
	input [1:0] op_code;

	output rd_mem;
	output wr_mem;
	output ir_on_adr;
	output pc_on_adr;
	output ld_ir;
	output ld_ac;
	output ld_pc;
	output inc_pc;
	output clr_pc;
	output pass_add;
	output reg sel_alu;
	output reg sel_bus;

	reg rd_mem;
	reg wr_mem;
	reg ir_on_adr;
	reg pc_on_adr;
	reg ld_ir;
	reg ld_ac;
	reg ld_pc;
	reg inc_pc;
	reg clr_pc;
	reg pass_add;
	reg [1:0] present_state;
	reg [1:0] next_state;


	reg test = 0;
	always @( posedge clk) begin : registering
		if (reset )
			present_state = `Reset;
		else
			present_state = next_state;
	end

	always @(*) begin : combinational
	

		case( present_state )
			 
			`Reset : begin
				next_state = `Fetch; 
				clr_pc = 1'b1;
				pc_on_adr = 1;
				ir_on_adr = 0;
			end
			`Fetch : begin
				next_state = `Execute ; 
				pc_on_adr=1'b1; 
				ir_on_adr = 0;
				rd_mem=1'b1;
				ld_ir=1'b1; 
				inc_pc=1;
				wr_mem = 0;
			end
			
			`Execute: begin
				next_state = `Fetch;
				inc_pc=0;
				if(op_code == 2'b00) begin
					test = 0;
				end
				else if(op_code == 2'b01) begin
					test = 0;
				end
				else if(op_code == 2'b10) begin
					test = 1;
				end
				else if(op_code == 2'b11) begin
					test = 0;
				end

				case( op_code )
					2'b00: begin //add

						rd_mem=1'b0; 
						wr_mem=1'b0; 
						ir_on_adr=1'b0; 
						pc_on_adr=1'b0;
						ld_ir=1'b0; 
						ld_ac=1'b1;
						ld_pc=1'b0; 
						inc_pc=1'b0; 
						clr_pc=1'b0; 
						pass_add=1'b1; 
						sel_alu=1; 
						sel_bus=0;

					end
					2'b01: begin //lda
						ir_on_adr=1'b1; 
						rd_mem=1'b1; 
						ld_ac=1'b1;  
						sel_bus= 1'b1;

						rd_mem=1'b0; 
						wr_mem=1'b0; 
						ir_on_adr=1'b0; 
						pc_on_adr=1'b0;
						ld_ir=1'b0; 
						ld_ac=1'b0;
						ld_pc=1'b0; 
						inc_pc=1'b0; 
						clr_pc=1'b0; 
						pass_add=1'b0; 
						sel_alu=0; 
						sel_bus=0;

					end
					2'b10: begin//sta

						rd_mem=1'b0; 
						wr_mem=1'b1; 
						ir_on_adr=1'b1; 
						pc_on_adr=1'b0;
						ld_ir=1'b0; 
						ld_ac=1'b0;
						ld_pc=1'b0; 
						inc_pc=1'b0; 
						clr_pc=1'b0; 
						pass_add=1'b0; 
						sel_alu=0; 
						sel_bus=0;

					end
					2'b11: begin //jump
						rd_mem=1'b0; 
						wr_mem=1'b0; 
						ir_on_adr=1'b0; 
						pc_on_adr=1'b0;
						ld_ir=1'b0; 
						ld_ac=1'b0;
						ld_pc=1'b1; 
						inc_pc=1'b0; 
						clr_pc=1'b0; 
						pass_add=1'b0; 
						sel_alu=0; 
						sel_bus=0;

					end
				endcase
			end
		endcase
	end
endmodule