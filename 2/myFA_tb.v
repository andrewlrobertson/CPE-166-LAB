//default timescale
module myFA_tb;

reg x_tb, y_tb, cin_tb;
wire cout_tb, s_tb;
reg [1:0] i, j, k;

myFA uut(x_tb, y_tb, cin_tb, cout_tb, s_tb);

initial
begin
for(i = 0; i < 2; i=i+1)
begin
	for(j = 0; j < 2; j=j+1)
	begin
		for(k = 0; k < 2; k=k+1)
		begin
		x_tb = i;
		y_tb = j;
		cin_tb = k;
		#50;
		end
	end
end
#50;
$stop;
end
endmodule