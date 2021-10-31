module seg7(HEX5,SW);//hex, leds

	//input [3:0] hex; this is the actual input, can change to wire  == keep as switches 0 to 3 for now
	input [3:0] SW;
	
	//output reg [1:7] leds;
	output [6:0] HEX5;

	always @(SW)
		case (SW)
			0000: leds = 7'b1111110;
			1111: leds = 7'b0110000;
			//etc
		endcase
endmodule

