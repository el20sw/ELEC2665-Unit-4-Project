`timescale 1 ns / 100 ps

module ClockDivider_tb;	//testbench for the ClockDivier

	reg clk_50MHz;
	reg set_n;
	wire clk_1Hz;
	
	wire [25:0] count;
	
	ClockDivider dut (
	
		.clk_50MHz	(clk_50MHz),
		.set_n		(set_n),
		.clk_1Hz		(clk_1Hz)
	
	);
	
	assign count = dut.counter;
	
	always
		begin
		
			#10
			clk_50MHz <= ~clk_50MHz;
		
		end
		
	initial
		begin
		
			clk_50MHz <= 0;
			set_n <= 0;
			
			#40
			set_n <= 1;
			#510000000
			set_n <= 0;
			#50
			set_n <= 1;
			#50
			$stop;
		
		end
		
endmodule
