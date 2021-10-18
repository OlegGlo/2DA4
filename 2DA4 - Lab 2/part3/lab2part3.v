/*


========== Part 1 Pseudo code: ==========


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


========== Part 2 Pseudo code ==========


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
*/

module part3(SW, HEX4, HEX5);

// ===== Input/Output Declarations ===== //

    //Part 1
    //input SW[9], SW[8], SW[7], SW[6];
    input wire [9:6]SW; 
	//output HEX5[0], HEX5[1], HEX5[2], HEX5[3], HEX5[4], HEX5[5], HEX5[6];
    output wire [6:0]HEX5;

    //Part 2
    //input SW[4], SW[3], SW[2], SW[1];
    input wire [4:1]SW;
	//output HEX4[0], HEX4[1], HEX4[2], HEX4[3], HEX4[4], HEX4[5], HEX4[6];
    output wire [6:0]HEX4;

// ===== Logic ===== //

    //part 1
    assign HEX5[0] = (!SW[9] & !SW[8] & !SW[7] &  SW[6]) |  
					(!SW[9] &  SW[8] & !SW[7] & !SW[6]) |  
					( SW[9] &  SW[8] & !SW[7] &  SW[6]) |  
					( SW[9] & !SW[8] &  SW[7] &  SW[6]) ;
	
	assign HEX5[1] = (!SW[9] &  SW[8] & !SW[7] &  SW[6]) |  
					(    &  SW[8] &  SW[7] & !SW[6]) |  
					( SW[9] &  SW[8] &       !SW[6]) |  
					( SW[9] &        SW[7] &  SW[6]) ;
	
	assign HEX5[2] = (!SW[9] & !SW[8] &  SW[7] & !SW[6]) |  
					( SW[9] &  SW[8] &       !SW[6]) |  
					( SW[9] &  SW[8] &  SW[7]      ) ;
	
	assign HEX5[3] = (!SW[9] & !SW[8] & !SW[7] &  SW[6]) |  
					(!SW[9] &  SW[8] & !SW[7] & !SW[6]) |  
					(       SW[8] &  SW[7] &  SW[6]) |  
					( SW[9] & !SW[8] &  SW[7] & !SW[6]) ;
	
	assign HEX5[4] = (       SW[8]       |  SW[6]) &  
					(            !SW[7] |  SW[6]) &  
					(!SW[9] | !SW[8]            ) &  
					(!SW[9] | !SW[8] | !SW[7] | !SW[6]) &	
					(!SW[9]       | !SW[7]      ) ;
	
	assign HEX5[5] = (             SW[7] |  SW[6]) &  
					( SW[9] | !SW[8] |  SW[7]      ) &  
					(      !SW[8] |        SW[6]) &
					(!SW[9] |       !SW[7]      ) &		
					(!SW[9] |  SW[8]            ) ;
	
	assign HEX5[6] = (       SW[8] | !SW[7]      ) &  
					(            !SW[7] |  SW[6]) &  
					( SW[9] | !SW[8] |  SW[7]      ) &  
					(!SW[9]             | !SW[6]) &  
					(!SW[9] |  SW[8]            ) ;

    //part 2
    assign HEX4[0] = (!SW[2] &  SW[1]) |  
                    ( SW[3] & !SW[2]) ;

	assign HEX4[1] = (SW[4]) | 
                    (!SW[2] &  SW[1]) |  
                    (!SW[3] &  SW[2]) ;

	assign HEX4[2] = (SW[4]) | 
                    (!SW[2] &  SW[1]) |  
                    ( SW[3] &  SW[1]) |
                    (!SW[3] & SW[2] & !SW[1]);

	assign HEX4[3] = ( SW[3] & !SW[2]) |  
                    ( SW[3] &  SW[1]) ;

	assign HEX4[4] = 0; //always low - can also do HEX4[5] <= 1'b0;

	assign HEX4[5] = 0;

	assign HEX4[6] = (!SW[3] & !SW[2]) |  
                    (!SW[3] &  SW[1]) |
                    (!SW[2] &  SW[1]) ;
endmodule

//Part 1

//use HEX5[6:0] and SW[9:6]
// HEX5[0] = s0
// HEX5[1] = s1
// HEX5[2] = s2
// HEX5[3] = s3
// HEX5[4] = s4
// HEX5[5] = s5
// HEX5[6] = s6

// SW[9] = x3
// SW[8] = x2
// SW[7] = x1
// SW[6] = x0

//Part 2

//use HEX4[6:0] and SW[4:1]
// HEX4[0] = s0
// HEX4[1] = s1
// HEX4[2] = s2
// HEX4[3] = s3
// HEX4[4] = s4
// HEX4[5] = s5
// HEX4[6] = s6

// SW[4] = x3
// SW[3] = x2
// SW[2] = x1
// SW[1] = x0