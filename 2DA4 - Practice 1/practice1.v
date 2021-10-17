
module tut1(CLOCK_50, KEY, LEDR);
//==Input and Output==
    input CLOCK_50;
    input [0:0]KEY;
    output [3:0]LEDR;

//==Net/Reg Declaration
    reg[3:0]LEDR;
    reg[25:0]count = 26'b0;
    //binary number for half a second

//==Model==
    always @(posedge CLOCK_50 or negedge KEY) begin
        if (~KEY) begin
            count <= 0;
            LEDR[3:0] <= 4'b0;  //equal to 4'b0000 where as 4'b1 = 4'b0001
        end else if (count == 26'b10111110101111000010000000) begin //50e6 - 50 million
            count <= 0;
            LEDR[3:0] <= {4{1'b0}};
        end else if (count >= 26'b1011111010111100001000000) begin //25e6 - 25 million
            LEDR[3:0] <= {4{1'b1}}; //makes it equal to 1111, repeats inner brackets 4 times.
            count <= count + 1;
        end else begin
            count <= count + 1;
            LEDR[3:0] <= {4{1'b0}}; //turning all 4 LEDs off with the statement
        end
    end
endmodule

//Total logic
/*
1. If key is pressed - reset the system & LED off

2. If count == 50 mil - reset to start from beginning

3. If between 25 mil and 50 mil - LED is ON. if between 0 and 25 mil LED is OFF

4. After 50 mil it is reset to 0 and the cycle restarts
*/