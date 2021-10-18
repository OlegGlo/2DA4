module part4(D, CLOCK, Q);

// == Input and Output ==

	input D, CLOCK;
	output Q;
	
// == Net/Reg ==

	output reg Q;
	
// == Logic ==
	
	always @(posedge CLOCK)
		Q <= D;

endmodule 
