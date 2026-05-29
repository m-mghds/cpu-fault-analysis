`timescale 1 ns / 1ns


module Tester ();
    reg  reset = 0, data_bus_in_0 = 0;
	
    wire adr_bus_g, rd_mem_net_g, wr_mem_net_g, data_bus_out_g, adr_bus_f, rd_mem_net_f, wr_mem_net_f, data_bus_out_f;

	reg detected;
	
	integer testFile, faultFile, status;
	
	reg[7:0] testVector;
	
	reg [8*60:1] wireName;
	
	reg stuckAtVal;
	
    CPU_net GUT (data_bus_in_0, adr_bus_g, rd_mem_net_g, wr_mem_net_g, data_bus_out_g);
	
	CPU_net FUT (data_bus_in_0, adr_bus_f, rd_mem_net_f, wr_mem_net_f, data_bus_out_f);

	initial begin
		faultFile = $fopen("CPUFaults.flt", "r");
		
		while( ! $feof(faultFile))begin
			reset = 1;
			reset = 0;
			detected = 1'b0;
			status = $fscanf(faultFile,"%s@%b\n",wireName, stuckAtVal);
			$InjectFault ( wireName , stuckAtVal);
			testFile = $fopen("CPUTest.tst", "r");
			while((!$feof(testFile))&(detected == 0)) begin
				#30;
				status = $fscanf(testFile,"%b\n",
				testVector);
				data_bus_in_0 = testVector;
				#60;
				if (data_bus_out_g != data_bus_out_f) begin ... end
			end //while eof test
			$RemoveFault(wireName);
			#30;
		end//while eof faults
		$stop;
	end// end
endmodule