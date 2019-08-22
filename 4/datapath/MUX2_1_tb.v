//default timescale
module MUX2_1_tb;
reg 	d0_tb, d1_tb, s_tb;
wire 	y_tb;

MUX2_1 uut(d0_tb, d1_tb, s_tb, y_tb);
initial
begin
d0_tb = 1'b0;
d1_tb = 1'b1;
s_tb = 0;
#50
s_tb = 1;
#50
$stop;
end
endmodule