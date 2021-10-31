
module flipflop(SW, KEY, LEDR);

    //Short describtion:
	/*
	

	*/

    // == Input and Output ==
	
	input [0:0] KEY; //acts as clock
	input [9:9] SW; //acts as input

	output [9:9]LEDR; //acts as output
	
    // == Net/Reg ==

	reg [9:9]LEDR;
	
    // == Logic ==
	
	always @(posedge KEY[0])
	begin
        LEDR[9] <= SW[9];
    end
endmodule
