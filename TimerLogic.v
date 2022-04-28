/****************************************************************/
/* This is the the core logic module for the timer applciaiton	 */
/****************************************************************/

module TimerLogic(

	input CLK_1Hz,				//An input clock sginal
	input set_n,				//An active-low (re)set sginal to reset (0) the timer and strat a new count down 
	input hold,					//An active-high hold signal to pause(1)/continue(0) the timer
	
	input [5:0] Qs_set,		//Carry in the  number of seconds to set the timer
	input [1:0] Qm_set,		//Carry in the  number of minute to set the timer (change the length if you need additonal funtions)
	
	output reg [5:0] Qs,		//The number of seconds remains for display
	output reg [1:0] Qm		//The number of minutes remains for display (change the length if you need additonal funtions)
);

	

endmodule 
