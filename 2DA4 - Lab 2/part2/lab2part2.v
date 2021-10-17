/*
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

// ===== Output generated =====
// OLEG HIBPC or close to it

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

module part2(SW, HEX4);

// ===== Input/Output Declarations ===== //

	//input SW[4], SW[3], SW[2], SW[1];
    input wire [4:1]SW;
	//output HEX4[0], HEX4[1], HEX4[2], HEX4[3], HEX4[4], HEX4[5], HEX4[6];
    output wire [6:0]HEX4;

// ===== Logic ===== //

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