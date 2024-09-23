`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.07.2024 19:37:59
// Design Name: 
// Module Name: full_adder32bit
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
module full_32bit_adder(
input [31:0]a,b,
input cin,
output [31:0]sum,
output cout
);
wire c7;
full_16bit_adder f111(.a(a[15:0]),.b(b[15:0]),.cin(cin),.cout(c7),.sum(sum[15:0]));
full_16bit_adder f112(.a(a[31:16]),.b(b[31:16]),.cin(c7),.cout(cout),.sum(sum[31:16]));
endmodule
module full_16bit_adder(
input [15:0]a,b,
input cin,
output [15:0]sum,
output cout
);
wire c4,c5,c6;
full_4bit_adder f11(.a(a[3:0]),.b(b[3:0]),.cin(cin),.cout(c4),.sum(sum[3:0]));
full_4bit_adder f12(.a(a[7:4]),.b(b[7:4]),.cin(c4),.cout(c5),.sum(sum[7:4]));
full_4bit_adder f13(.a(a[11:8]),.b(b[11:8]),.cin(c5),.cout(c6),.sum(sum[11:8]));
full_4bit_adder f14(.a(a[15:12]),.b(b[15:12]),.cin(c6),.cout(cout),.sum(sum[15:12]));
endmodule
module full_4bit_adder(
input [3:0]a,b,
input cin,
output [3:0]sum,
output cout
);
wire c1,c2,c3;
full_adder f1(.a(a[0]),.b(b[0]),.cin(cin),.cout(c1),.sum(sum[0]));
full_adder f2(.a(a[1]),.b(b[1]),.cin(c1),.cout(c2),.sum(sum[1]));
full_adder f3(.a(a[2]),.b(b[2]),.cin(c2),.cout(c3),.sum(sum[2]));
full_adder f4(.a(a[3]),.b(b[3]),.cin(c3),.cout(cout),.sum(sum[3]));
endmodule
module full_adder(
input a,b,cin,
output sum,cout
    );
wire w1,w2,w3;
assign w1=a^b;
assign sum=w1^cin; /*s=sum and cin = carry in*/
assign w2=a&b;
assign w3= w1&cin;
assign cout=w2 | w3; /* carry out*/
endmodule
