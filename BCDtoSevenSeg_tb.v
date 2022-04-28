`timescale 1 ns / 100 ps

module BCDtoSevenSeg_tb;		//testbench for the the BCD to 7-segments signal module
	
	reg [3:0] BCD;
	wire [6:0] SevenSeg;
	
	BCDtoSevenSeg dut (
	
		.BCD			(BCD),
		.SevenSeg	(SevenSeg)
	
	);
	
	integer i;
	
	initial
	begin
	
		for (i = 0; i < 10; i = i + 1)
		begin
		
			{BCD[3], BCD[2], BCD[1], BCD[0]} = i;
			
			#10;
		
		end
		
		$stop;
	
	end
	
endmodule
