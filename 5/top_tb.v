//default timescale

module top_tb();

reg [31:0] A, B;
wire [31:0] Y;

top uut(A,B,Y);

initial
begin

A = 32'b00000000000000000000000000000000; // +0 * -0 = -0
B = 32'b10000000000000000000000000000000;
#10

A = 32'b10000000000000000000000000000000; // -0 * -0 = +0
B = 32'b10000000000000000000000000000000;
#10

A = 32'b10111111100000000000000000000000; // -1 * -1 = 1
B = 32'b10111111100000000000000000000000;
#10

A = 32'b01000010100011110100000000000000; // 71.625 * -10 = -716.25 "11000100001100110001000000000000"
B = 32'b11000001001000000000000000000000;
#10

A = 32'b01000101001000011011100000000000; //2587.5 * 105.625 = 273304.6875 "01001000100001010111001100010110"
B = 32'b01000010110100110100000000000000;
#10

$stop;
end
endmodule