//default timescale
module MUX4_1_tb;
	reg 	  	  d3, d2, d1, d0; 
	reg 		  [1:0] s;
	wire 		  y;

MUX4_1 uut(d0, d1, d2, d3, s, y);
initial
begin
d0 = 1'b0;
d1 = 1'b1;
d2 = 1'b0;
d3 = 1'b1;
s = 0;
#50
s = 1;
#50
s = 2;
#50
s = 3;
#50
$stop;
end
endmodule