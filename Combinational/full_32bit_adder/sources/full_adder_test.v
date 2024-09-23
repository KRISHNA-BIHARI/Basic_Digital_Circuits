`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.09.2024 16:21:17
// Design Name: 
// Module Name: full_adder_test
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


module full_adder_test;
reg [31:0]a,b;
reg cin;
wire [31:0]sum;
wire cout;
full_32bit_adder A1 (.a(a[31:0]),.b(b[31:0]),.cin(cin),.cout(cout),.sum(sum[31:0]));
initial
begin
a[31:0]=32'b0;b[31:0]=32'b0;cin=1'b0;
end
initial
$monitor($time,"a=%b+b=%b=sum=%b&=cout%b",a,b,sum,cout);  
initial 
begin 
 #5 a=32'd9642554;b=32'd10756744;
 #5 a=32'd1555844;b=32'd1554;
 #5 a=32'd0046854;b=32'd955235874;
 #5 a=32'd1554;b=32'd1046468054;
 #5 a=32'd15674;b=32'd1357554;
 #5 a=32'd15876464;b=32'd15294;
 #5 a=32'd2147945254;b=32'd2147483648;
 #5 $finish;
end
endmodule
