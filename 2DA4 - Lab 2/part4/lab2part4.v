module part4(SW, KEY, LEDR, HEX5);

// == Input and Output ==

	
	input [1:0] KEY;
	input [9:9] SW;

	output [6:0]HEX5;
	output [9:9]LEDR;
	
// == Net/Reg ==

	reg [9:9]LEDR;
	reg [6:0]HEX5;
	
// == Logic ==

	always @(posedge KEY[0]) 
	begin
		if (~KEY[1])//reset key
		begin
			LEDR[9] = 1'b1;
			HEX5 = 0; //Doesnt work ????
		end
		else
			LEDR[9] <= SW[9];
			if(SW[9] == 1'b0)
				HEX5[5:0] <= {6'b000000};// or can do the method below
			else
				HEX5 <= {7'b1111001};//Make display show "1"
	end
	
endmodule 