module seg7(hex,leds);
	input [3:0] hex;
	
	output reg [1:7] leds;
	
	always @(hex)
		case (hex)
			0: leds = 7'b1111110;
			1: leds = 7'b0110000;
			//etc
			
		endcase
		
endmodule
