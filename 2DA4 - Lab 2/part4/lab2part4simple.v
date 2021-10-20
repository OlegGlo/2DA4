
module part4(D, Clock, Q);

// == Input and Output ==
	
	input D, Clock;

	output Q;
	
// == Net/Reg ==

	reg Q;
	
// == Logic ==

	always @(posedge Clock) 
		Q <= D;
		  
endmodule 