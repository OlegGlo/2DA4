
module adder(a, b, sum, led);

	// === Input / Output ===
	
	input [2:0] a,b;
	
	output [3:0] led;
	
	output [3:0] sum;
	
	// === Net / Reg ===
	
	
	// === Logic ===
	
	
	assign led = a + b;
	
	assign sum = a + b;
	
	/*
	always @(a,b)
	begin
		LEDR[9:6] <= a + b;
	end
	*/
	
	

endmodule

//use figure 3.24 for this
