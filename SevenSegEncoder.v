/****************************************************************/
/* This is 7-segment display enccoder to tranfer the minutes    */
/* and second signal to four bit 7-segment display signals.     */
/****************************************************************/

module SevenSegEncoder (
	input [5:0] Qs, 			//The number of seconds remains for display
	input [1:0] Qm,			//The number of minutes remains for display
	
	output [6:0] HexM_1,		//7-segment display sginal for higer-bit of mintue
	output [6:0] HexM_2,		//7-segment display sginal for lower-bit of mintue
	output [6:0] HexS_1,		//7-segment display sginal for higer-bit of second
	output [6:0] HexS_2		//7-segment display sginal for lower-bit of second

);



endmodule
