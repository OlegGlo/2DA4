
module seg7(HEX5,SW);//hex, leds

	//Short description:
	/*
	a driver for the 7-bit display, takes in a 4-bit input and outputs 16 different variations on the display
	*/

	//input [3:0] hex; this is the actual input, can change to wire  == keep as switches 0 to 3 for now
	input [3:0] SW;
	
	//output reg [1:7] leds;
	output [6:0] HEX5;
	
	reg [6:0] HEX5;
	
	always @(SW)
		case (SW)
			0: HEX5 = 7'b1000000; //0
			1: HEX5 = 7'b1111001; //1
			2: HEX5 = 7'b0100100; //2
			3: HEX5 = 7'b0110000; //3
			4: HEX5 = 7'b0011001; //4
			5: HEX5 = 7'b0100100; //why are they mirrored?
			6: HEX5 = 7'b0100000; //broke as the rest are
			7: HEX5 = 7'b0001111; //7
			8: HEX5 = 7'b0000000; //8
			9: HEX5 = 7'b0000100; //9
			10: HEX5 = 7'b0001000; //A
			11: HEX5 = 7'b0000100; //etc
			12: HEX5 = 7'b0001000;
			13: HEX5 = 7'b0010000;
			14: HEX5 = 7'b0100000;
			15: HEX5 = 7'b1000000; //fix these with actual numbers
			//etc
		endcase
endmodule

//also do simulation


