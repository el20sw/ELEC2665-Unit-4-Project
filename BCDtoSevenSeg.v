module BCDtoSevenSeg (

	input [3:0] BCD, 				//4 bit BCD input
	output reg [6:0] SevenSeg	//7 bit 7-segment display control sginal
	
);

	wire [6:0] Segment;
	
	//a = BCD[3], b = BCD[2], c = BCD[1], d = BCD[0]
	assign Segment[0] = !(BCD[1] | BCD[3] | (BCD[2] & BCD[0]) | (~BCD[2] & ~BCD[0]));
	assign Segment[1] = !(~BCD[2] | (~BCD[1] & ~BCD[0]) + (BCD[1] & BCD[0]));
	assign Segment[2] = !(~BCD[1] | BCD[2] | BCD[0]);
	assign Segment[3] = !(BCD[3] | (BCD[1] & ~BCD[0]) | (~BCD[2] & ~BCD[0]) | (~BCD[2] & BCD[1]) | (BCD[2] & ~BCD[1] & BCD[0]));
	assign Segment[4] = !((~BCD[2] & ~BCD[0]) | (BCD[1] & ~BCD[0]));
	assign Segment[5] = !(BCD[3] | (~BCD[1] & ~BCD[0]) | (BCD[2] & ~BCD[1]) | (BCD[2] & ~BCD[0]));
	assign Segment[6] = !(BCD[3] | (BCD[2] & ~BCD[0]) | (BCD[1] & ~BCD[0]) | (~BCD[2] & BCD[0]));
	
	always @ (*)
	begin
	
		SevenSeg[0] <= Segment[0];
		SevenSeg[1] <= Segment[1];
		SevenSeg[2] <= Segment[2];
		SevenSeg[3] <= Segment[3];
		SevenSeg[4] <= Segment[4];
		SevenSeg[5] <= Segment[5];
		SevenSeg[6] <= Segment[6];
	
	end

endmodule
