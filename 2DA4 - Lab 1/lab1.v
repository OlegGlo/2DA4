
//PSEUDO CODE
/*
module dual2(x1, x0, y1, y0, f2, f1);

	// ===== INPUT/OUTPUT DECLARATIONS ===== //

	input x1, x0, y1, y0;
	output f1, f2;

	assign f1 = (~x1 &  y1) |
				(~x0 &  y0) |
				( x1 & ~y1) |
				( x0 & ~y0) ;

	assign f2 = (~x1 & ~x0 & ~y1 & ~y0) |
				(~x1 &  x0 & ~y1 & ~y0) |
				(~x1 &  x0 & ~y1 &  y0) |
				( x1 & ~x0 & ~y1 & ~y0) |
				( x1 & ~x0 & ~y1 &  y0) |
				( x1 & ~x0 &  y1 & ~y0) |
				( x1 &  x0 & ~y1 & ~y0) |
				( x1 &  x0 & ~y1 &  y0) |
				( x1 &  x0 &  y1 & ~y0) |
				( x1 &  x0 &  y1 &  y0) ;

endmodule
*/

//updated version


module dual2(SW, LEDR);

// ===== Input/Output Declarations ===== //
	input wire [9:6]SW;
	output wire [9:8]LEDR;

// ===== Net/Reg Declarations ===== //
   //reg [9:8]LEDR;

// ===== Logic ===== //
	assign LEDR[9] = (~SW[9] &  SW[7]) |
				(~SW[8] &  SW[6]) |
				( SW[9] & ~SW[7]) |
				( SW[8] & ~SW[6]) ;
				
	assign LEDR[8] = (~SW[9] & ~SW[8] & ~SW[7] & ~SW[6]) |
				(~SW[9] &  SW[8] & ~SW[7] & ~SW[6]) |
				(~SW[9] &  SW[8] & ~SW[7] &  SW[6]) |
				( SW[9] & ~SW[8] & ~SW[7] & ~SW[6]) |
				( SW[9] & ~SW[8] & ~SW[7] &  SW[6]) |
				( SW[9] & ~SW[8] &  SW[7] & ~SW[6]) |
				( SW[9] &  SW[8] & ~SW[7] & ~SW[6]) |
				( SW[9] &  SW[8] & ~SW[7] &  SW[6]) |
				( SW[9] &  SW[8] &  SW[7] & ~SW[6]) |
				( SW[9] &  SW[8] &  SW[7] &  SW[6]) ;

endmodule

