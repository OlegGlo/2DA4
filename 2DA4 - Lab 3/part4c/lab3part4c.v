
module reg3(SW, KEY, LEDR); //D, Clock, Resetn, Q, s0, s1, s2, s3, s4, s5, s6

	//Short describtion:
	/*
	

	*/

	// === Input and Output

	
	//input [2:0] D;
	input [2:0]SW;
	
	//input Clock, Resetn;
	input [1:0] KEY;
	
	//output s0, s1, s2, s3, s4, s5, s6;
	output [2:0]LEDR;

	
	// === Net Reg ===

	
	//output reg [2:0] Q;
	reg [2:0]LEDR;

	
	// === Logic ===
	

	always @(posedge KEY[0], negedge KEY[1]) //always @(posedge Clock, negedge Resetn)  === KEY 1 is reset, KEY 0 is clock
	if (KEY[1] == 0)
		LEDR <= 3'b000; // Q <= 0 achieves same result
	else
		LEDR <= SW;
	
	/*
	assign s0 = (!Q[2] & !Q[1] &  Q[0]) |  
					( Q[2] & !Q[1] & !Q[0]) ;
	
	assign s1 = ( Q[2] & !Q[1] &  Q[0]) |  
					( Q[2] &  Q[1] & !Q[0]) ;
	
	assign s2 = (!Q[2] &  Q[1] & !Q[0]) ;
	
	assign s3 = (!Q[2] & !Q[1] &  Q[0]) |  
					( Q[2] & !Q[1] & !Q[0]) |  
					( Q[2] &  Q[1] &  Q[0]) ;
	
	assign s4 = (                 Q[0]) |  
					( Q[2] & !Q[1]        ) ;  
	
	assign s5 = (         Q[1] |  Q[0]) &  
					(!Q[2] |  Q[1]        ) &  
					(!Q[2] |          Q[0]) ;
	
	assign s6 = (!Q[2] & !Q[1]        ) |  
					( Q[2] &  Q[1] &  Q[0]) ;
	*/
	
endmodule
