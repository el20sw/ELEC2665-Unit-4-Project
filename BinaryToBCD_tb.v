`timescale 1 ns / 100 ps

module BinaryToBCD_tb;		//testbench for the the Binary to BCD encoder module
	
	reg [6:0] Binary;
	wire [7:0] BCD;
	
	BinaryToBCD dut (Binary, BCD);

	integer i;
		
	initial begin
		for (i = 0; i < 128; i = i + 1) 
			begin
		
				Binary = i;
		
				#10;
		
			end
		$stop;
	end
	
endmodule
