
module displaydriver(sw, hex);

	// === Input / Output ===

	input [3:0] sw;
	
	output [6:0] hex;
	
	// === Net / Reg ===
	
	reg [6:0] hex;
	
	// === Logic ===
	
	always @(sw)
		case (sw)
			0: hex = 7'b1000000; //0
			1: hex = 7'b1111001; //1
			2: hex = 7'b0100100; //2
			3: hex = 7'b0110000; //3
			4: hex = 7'b0011001; //4
			5: hex = 7'b0010010; //5
			6: hex = 7'b0000010; //6
			7: hex = 7'b1111000; //7
			8: hex = 7'b0000000; //8
			9: hex = 7'b0010000; //9
			10: hex = 7'b0001000; //A
			11: hex = 7'b0000100; //etc
			12: hex = 7'b0001000;
			13: hex = 7'b0010000;
			14: hex = 7'b0100000;
			15: hex = 7'b1000000; //fix these with actual numbers
			//etc
		endcase

endmodule
