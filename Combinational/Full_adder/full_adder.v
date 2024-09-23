`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.07.2024 02:11:19
// Design Name: krishna
// Module Name: full_adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module full_adder(
input a,b,cin,
output s,cout
    );
wire w1,w2,w3;
assign w1=a^b;
assign s=w1^cin; /*s=sum and cin = carry in*/
assign w2=a&b;
assign w3= w1&cin;
assign cout=w2 | w3; /* carry out*/
endmodule
