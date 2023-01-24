`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.01.2023 12:48:49
// Design Name: 
// Module Name: NbitCLA_Adder
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


module NbitCLA_Adder(
  a,b,sum,cin,cout
    );
    parameter N=8;
    input [N-1:0] a;
    input [N-1:0] b;
    input cin;
    output reg [N-1:0]sum;
    output reg  cout;
    reg [N-1:0] g;
    reg [N-1:0] p;
    reg [N:0] c;
    integer i;
    //carry generator
    always@(*) begin
    for(i=0;i<N;i=i+1) 
       begin
        g[i] = a[i] & b[i];
       end
    
    //carry propagator
    for(i=0;i<N;i=i+1) 
       begin
          p[i] = a[i] ^ b[i];
       end
    
     c[0]=cin;
    for(i=0;i<N;i=i+1) 
       begin
          c[i+1]=g[i] | (p[i]&c[i]);
       end
    //sum
    for(i=0;i<N;i=i+1) 
       begin
          sum[i] = p[i] ^ c[i];
       end
     cout=c[N];
    end
    
endmodule
