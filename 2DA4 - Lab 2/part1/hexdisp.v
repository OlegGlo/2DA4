module hexdisp(x3, x2, x1, x0, s0, s1, s2, s3, s4, s5, s6);
	input x3, x2, x1, x0;
	output s0, s1, s2, s3, s4, s5, s6;
	
	assign s0 = (!x3 & !x2 & !x1 &  x0) |  
					(!x3 &  x2 & !x1 & !x0) |  
					( x3 &  x2 & !x1 &  x0) |  
					( x3 & !x2 &  x1 &  x0) ;
	
	assign s1 = (!x3 &  x2 & !x1 &  x0) |  
					(    &  x2 &  x1 & !x0) |  
					( x3 &  x2 &       !x0) |  
					( x3 &        x1 &  x0) ;
	
	assign s2 = (!x3 & !x2 &  x1 & !x0) |  
					( x3 &  x2 &       !x0) |  
					( x3 &  x2 &  x1      ) ;
	
	assign s3 = (!x3 & !x2 & !x1 &  x0) |  
					(!x3 &  x2 & !x1 & !x0) |  
					(       x2 &  x1 &  x0) |  
					( x3 & !x2 &  x1 & !x0) ;
	
	assign s4 = (       x2       |  x0) &  
					(            !x1 |  x0) &  
					(!x3 | !x2            ) &  
					(!x3 | !x2 | !x1 | !x0) &	
					(!x3       | !x1      ) ;
	
	assign s5 = (             x1 |  x0) &  
					( x3 | !x2 |  x1      ) &  
					(      !x2 |        x0) &
					(!x3 |       !x1      ) &		
					(!x3 |  x2            ) ;
	
	assign s6 = (       x2 | !x1      ) &  
					(            !x1 |  x0) &  
					( x3 | !x2 |  x1      ) &  
					(!x3             | !x0) &  
					(!x3 |  x2            ) ;
endmodule