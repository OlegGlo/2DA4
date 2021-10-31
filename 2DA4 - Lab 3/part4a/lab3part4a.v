
module seg7(HEX5,SW);//hex, leds

	//input [3:0] hex; this is the actual input, can change to wire  == keep as switches 0 to 3 for now
	input [3:0] SW;
	
	//output reg [1:7] leds;
	output [6:0] HEX5;
	
	reg [6:0] HEX5;
	

	always @(SW)
		case (SW)
			0: HEX5 = 7'b1111111;
			1: HEX5 = 7'b0000000;
			2: HEX5 = 7'b0000000;
			3: HEX5 = 7'b1000000;
			4: HEX5 = 7'b0100000;
			5: HEX5 = 7'b0010000;
			6: HEX5 = 7'b0001000;
			7: HEX5 = 7'b0000100;
			8: HEX5 = 7'b0000010;
			9: HEX5 = 7'b0000001;
			10: HEX5 = 7'b0000010;
			11: HEX5 = 7'b0000100;
			12: HEX5 = 7'b0001000;
			13: HEX5 = 7'b0010000;
			14: HEX5 = 7'b0100000;
			15: HEX5 = 7'b1000000; //fix these with actual numbers
			//etc
		endcase
endmodule

//also do simulation


