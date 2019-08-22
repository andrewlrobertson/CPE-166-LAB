//default timescale
module ALU_tb;
	reg 	  	  a, b, Cin; 
	reg 		  [2:0] s;
	wire 		  y;

ALU uut(a, b, s, Cin, y);
initial
begin
a = 1'b0;
b = 1'b1;
Cin = 1'b1;
s = 0;
#50
s = 1;
#50
s = 2;
#50
s = 3;
#50
s = 4;
#50
s = 5;
#50
s = 6;
#50
s = 7;
#50
$stop;
end
endmodule