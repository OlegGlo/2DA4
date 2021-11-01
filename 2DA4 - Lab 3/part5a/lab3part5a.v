
module simplealu(switch1, switch2, light, display); //KEY, LEDR

	// === Input / Output ===
	
	input wire [9:7] switch1; //input keys  ==== chnage to [9:7] later
	input wire [6:4] switch2;
	
	//input [1:0] KEY; //clock and reset
	
	output [3:0] light; //output
	output [6:0] display; 
	
	// === Net / Reg ===
	
	wire [3:0] x1;
	
	//wire [3:0] x2;
	
	
	//debug
	//reg [9:6] LEDR;
	
	//wire [6:0] HEX5;
	//delete^
	
	
	
	// === Logic ===
	
	adder U1(
		.a (switch1),
		.b (switch2),
		.sum (x1),
		.led (light)
		);

	//store input in register 1

	//add register 1 and register 2

	//store input in register 2

	//keep storing display
	
	displaydriver U2(
		.sw (x1),
		.hex (display)
		);
	
	
endmodule

/*	
	
	input [9:4] SW;
	
	input [0:0] KEY;
	
	output [9:6] LEDR;
	
	// === Net / Reg ===
	
	reg [9:6] LEDR;
	
	//reg clck;

	//assign clck = KEY[0];
	
	// === Logic ===
	
	always @(posedge KEY[0])
	begin
		LEDR <= SW[9:7] + SW[6:4]; 
	end

endmodule

*/
