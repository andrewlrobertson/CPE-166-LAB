//default timescale
module myHA_tb;

reg x_tb, y_tb;
wire cout_tb, s_tb;
reg [1:0] i, j;

myHA uut(x_tb, y_tb, cout_tb, s_tb);

initial
begin
for(i = 0; i < 2; i=i+1)
begin
x_tb = i;
	for(j = 0; j < 2; j=j+1)
	begin
	y_tb = j;
	#50;
	end
end
#50;
$stop;
end
endmodule
