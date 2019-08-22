`timescale 1ns/1ps

module adder_tb;
wire cout_tb;
wire [3:0] s_tb;
reg [3:0] a_tb, b_tb;

adder uut(a_tb, b_tb, cout_tb, s_tb);
initial 
begin
a_tb = 4'b1010;
b_tb = 4'b0101;
#20
$stop;
end
endmodule
