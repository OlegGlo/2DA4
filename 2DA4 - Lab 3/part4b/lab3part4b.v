
module flipflop(SW, KEY, LEDR);

    //Short description:
	/*
	input 1 bit and store it in the D-FF
	
	switch position is input and LED shows the output state

	the key is used as a clock
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
