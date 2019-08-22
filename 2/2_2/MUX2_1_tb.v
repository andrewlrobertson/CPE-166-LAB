//default timescale
module MUX2_1_tb;
reg [3:0] d0_tb, d1_tb;
reg s_tb;
wire [3:0] y_tb;

MUX2_1 uut(d0_tb, d1_tb, s_tb, y_tb);
initial
begin
d0_tb = 4'b0000;
d1_tb = 4'b1010;
s_tb = 0;
#50
s_tb = 1;
#50
$stop;
end
endmodule