//default timescale

module top_tb();

reg clk, reset, m0, m1, m2, cin;
wire dout;

top uut(reset, clk, m0, m1, m2, cin, dout);

always
begin
#5 clk = ~clk; 
end

initial
begin
clk = 0;

m0 = 1; m1 = 0; m2 = 1; cin  = 1;
#2 reset = 1;
#10 reset = 0;
#150

m0 = 1; m1 = 0; m2 = 1; cin  = 0;
#2 reset = 1;
#10 reset = 0;
#150

m0 = 1; m1 = 1; m2 = 1; cin  = 1;
#2 reset = 1;
#10 reset = 0;
#150

m0 = 0; m1 = 1; m2 = 1; cin  = 1;
#2 reset = 1;
#10 reset = 0;
#150

$stop;
end
endmodule