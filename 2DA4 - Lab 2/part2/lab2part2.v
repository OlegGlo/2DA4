
module part2(x3, x2, x1, x0, s0, s1, s2, s3, s4, s5, s6);
    // ===== Input/Output Declarations ===== //
	input x3, x2, x1, x0;
	output s0, s1, s2, s3, s4, s5, s6;

    // ===== Logic ===== //
	assign s0 = (!x1 &  x0) |  
                ( x2 & !x1) ;

	assign s1 = (x3) | 
                (!x1 &  x0) |  
                (!x2 &  x1) ;

	assign s2 = (x3) | 
                (!x1 &  x0) |  
                ( x2 &  x0) |
                (!x2 & x1 & !x0);

	assign s3 = ( x2 & !x1) |  
                ( x2 &  x0) ;

	assign s4 = 0; //always low - can also do s5 <= 1'b0;

	assign s5 = 0;

	assign s6 = (!x2 & !x1) |  
                (!x2 &  x0) |
                (!x1 &  x0) ;
endmodule

    // ===== Output generated =====
    // OLEG HIBPC or close to it

    