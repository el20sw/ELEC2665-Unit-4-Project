/****************************************************************/
/* This is a clock divider module to reudce the clock frequency */
/* from 50MHz to 1Hz (which can be used for the timer).         */
/****************************************************************/

module ClockDivider(

	input clk_50MHz, 		//A 50MHz input clock signal from FPGA
	input set_n, 			//An active-low (re)set sginal to reset(0) the clock divider
	output reg clk_1Hz 	//A 1Hz output clock sginal 

);

	reg [25:0] counter;
	
	always @ (posedge clk_50MHz or negedge set_n)
		begin
		
			if (!set_n)
				begin
				
					counter <= 0;
					clk_1Hz <= 0;
				
				end
			else if (counter == 24999999)
				begin
				
					counter <= 0;
					clk_1Hz <= ~clk_1Hz;
				
				end
			else
				begin
				
					counter <= counter + 1;
				
				end
		
		end

endmodule

		