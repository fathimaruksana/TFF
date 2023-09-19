`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.09.2023 15:29:23
// Design Name: 
// Module Name: TFF
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


module TFF(clk,reset,t,q,qb);
input t,reset,clk;
output reg q;
output qb;

always@(posedge clk)
begin
if(reset)
begin
q<=0;
end
else if(t)
begin
q <= (~t);end
else
begin
q<=q;end
end
assign qb = ~q;
endmodule
