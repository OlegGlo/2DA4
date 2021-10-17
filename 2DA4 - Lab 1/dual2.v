module dual2(x1, x0, y1, y0, f2, f1);

// ===== INPUT/OUTPUT DECLARATIONS ===== //

input x1, x0, y1, y0;
output f1, f2;

assign f1 = (~x1 &     	  y1      ) |
				(      ~x0 &        y0) |
				( x1       & ~y1      ) |
				(       x0 &       ~y0) ;

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