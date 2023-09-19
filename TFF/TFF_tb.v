`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.09.2023 15:36:18
// Design Name: 
// Module Name: TFF_tb
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


module TFF_tb( );
reg t,reset,clk;
wire q,qb;
TFF TFF_1(clk,reset,t,q,qb);
initial
begin
clk=1'b0;
end
always
begin
#10
clk=~clk;
end
initial
begin
$monitor("clk = %b, reset=%0b, t = %b, q = %b, qb = %b", clk, t,reset, q, qb);
end
initial
 begin 
 reset=1'b1;
 t = 0;
 #20
 t = 1;
 #20
   reset=1'b1;
 t = 0;
 #20
   reset=1'b0;
 t = 1;
 end
endmodule
