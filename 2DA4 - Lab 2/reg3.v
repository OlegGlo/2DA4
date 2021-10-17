module reg3(D, Clock, Resetn, Q, s0, s1, s2, s3, s4, s5, s6);

	input [2:0] D;
	input Clock, Resetn;
	output reg [2:0] Q;
	output s0, s1, s2, s3, s4, s5, s6;
	
	always @(posedge Clock, negedge Resetn)
	if (Resetn == 0)
		Q <= 3'b000; // Q <= 0 achieves same result
	else
		Q <= D;
	
	
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

endmodule