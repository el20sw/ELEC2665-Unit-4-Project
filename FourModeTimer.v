/****************************************************************/
/* This is the project top level entity.							    */
/* Function table for C1 and C2:										    */
/* C1=0, C2=0: 5s timer														 */
/* C1=1, C2=0: 10s timer													 */
/* C1=0, C2=1: 1min timer													 */
/* C1=1, C2=1: 2min timer													 */
/* 7-sig display format:													 */
/*				Hex_M1 Hex_M2 . Hex_S1 Hex_S2							    */
/****************************************************************/

module FourModeTimer (
	input clk_50M,				//An input clock sginal from FPGA
	input set,					//An active-low (re)set sginal to reset (0) the timer and strat a new count down 
	input hold,					//An active-hihg hold signal to pause(1)/continue(0) the timer
	input C1, 					//Mode selection input 1
	input C2,					//Mode selection input 1
	
	output [6:0] Hex_M1,		//7-segment display sginal for higer-bit of mintue
	output [6:0] Hex_M2,		//7-segment display sginal for higer-bit of mintue
	output [6:0] Hex_S1,		//7-segment display sginal for higer-bit of mintue
	output [6:0] Hex_S2,		//7-segment display sginal for higer-bit of mintue
	output CLK_ind				//Clock indication signal (please change it in you need a register type output)

);


endmodule
