//default timescale
module fourby4_combo_mult_tb;
reg  [3:0] x_tb, y_tb;
wire [7:0] p_tb;
reg [4:0]i, j;
fourby4_combo_mult uut(x_tb, y_tb, p_tb);
initial
begin
for(i=0;i<16;i=i+1)
begin
	for(j=0;j<16;j=j+1)
	begin
	x_tb = i;
	y_tb = j;
	#1;
	end
end
#1;
$stop;
end
endmodule
