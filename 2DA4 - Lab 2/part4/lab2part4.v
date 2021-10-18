module part4(Q, SW, KEY);

// == Input and Output ==

	
	input [0:0] KEY;
	input [9:9] SW;

	output Q;
	output wire HEX5[6:0];
	
// == Net/Reg ==

	reg Q;
	
// == Logic ==
	
	always @(posedge KEY)
		if (~KEY)
			Q <= SW[9];
			if(Q == 0)
				HEX5[5:0] <= {6[1'b0]}
			else
				HEX5[2:1] <= {2[1'b1]}
		else
			if(Q == 0)
				HEX5[5:0] <= {6[1'b0]}
			else
				HEX5[2:1] <= {2[1'b1]}

endmodule 