
module simplealu(SW, LEDR, KEY);

	// === Input / Output ===
	
	input [9:4] SW;
	
	input [0:0] KEY;
	
	output [9:6] LEDR;
	
	// === Net / Reg ===
	
	reg [9:6] LEDR;
	
	// === Logic ===
	
	always @(posedge KEY[0])
	begin
		LEDR <= SW[9:7] + SW[6:4]; 
	end

endmodule
