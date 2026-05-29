module PC (clk, reset, data_in, inc_pc, clr_pc, ld_pc , pc_out);
	input clk;
	input reset;
	input [5:0] data_in;
	input ld_pc;
	input clr_pc;
	input inc_pc;
	output reg [5:0] pc_out;

	always @( posedge clk)begin
		if(reset) begin
			pc_out <= 0;
		end else begin
			if(clr_pc) begin
				pc_out <= 0;
			end else if (ld_pc) begin
				pc_out <= data_in;
			end else if (inc_pc) begin
				pc_out <= pc_out + 1;
			end

		end
	end
endmodule