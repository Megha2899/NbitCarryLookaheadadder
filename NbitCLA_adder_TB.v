`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.01.2023 12:51:04
// Design Name: 
// Module Name: NbitCLA_adder_TB
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


module NbitCLA_adder_TB;
 parameter N=8;
reg [N-1:0]a;
reg[N-1:0]b;
reg cin;
wire [N-1:0] sum;
wire cout;

NbitCLA_Adder dut(a,b,sum,cin,cout);
initial
begin
    a=8'b11110000;
    b=8'b11000000;
    cin=0;
    #100
     a=8'b10101111;
     b=8'b01011100;
     cin=0;
    #100
    $finish;
end
   
endmodule
