
module simplealu(SW, LEDR, KEY, clck);

	// === Input / Output ===
	
	input [9:4] SW;
	
	input [0:0] KEY;
	
	output [9:6] LEDR;
	
	// === Net / Reg ===
	
	reg [9:6] LEDR;

	assign clck = KEY[0];
	
	// === Logic ===
	
	always @(posedge clck)
	begin
		LEDR <= SW[9:7] + SW[6:4]; 
	end

endmodule
