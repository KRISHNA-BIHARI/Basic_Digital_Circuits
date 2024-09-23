`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.07.2024 02:22:14
// Design Name: krishna
// Module Name: full_test
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

/* we can use for-loop for assignments (line 31-38) */
module full_test;
reg a,b,cin;
wire s,cout;
full_adder n1 (.a(a),.b(b),.cin(cin),.s(s),.cout(cout));
initial
$monitor($time ,"a=%b,b=%b,cin=%b,s=%b,cout=%b\n",a,b,cin,s,cout);
initial
begin 
#1 a=1'b0;b=1'b0;cin=1'b0; 
#5 a=1'b0;b=1'b0;cin=1'b1;
#5 a=1'b0;b=1'b1;cin=1'b0;
#5 a=1'b0;b=1'b1;cin=1'b1;
#5 a=1'b1;b=1'b0;cin=1'b0;
#5 a=1'b1;b=1'b0;cin=1'b1;
#5 a=1'b1;b=1'b1;cin=1'b0;
#5 a=1'b1;b=1'b1;cin=1'b1;
#1 $finish;
end
endmodule
