//default timescale

module datapath_tb();

reg clear, clock, M0, M1, M2, Cin;
reg [1:0] sel;
reg [2:0] w, s;
reg [3:0] ce;
wire dout;


datapath uut(clear, w, ce, sel, s, clock, M0, M1, M2, Cin, dout);

always
begin
#5 clock = ~clock; 
end

initial
begin
clock = 0;
M0 = 1; M1 = 0; M2 = 1; Cin = 1;

w[0] = 0; w[1] = 0; w[2] = 0;                   //clear the DFFS
ce[0] = 0; ce[1] = 0; ce[2] = 0; ce[3] = 0;
sel = 0;
s = 0; 
#2 clear = 1;
#20

w[0] = 0; w[1] = 0; w[2] = 0;                   //Pull in M0 to DFF1
ce[0] = 1; ce[1] = 0; ce[2] = 0; ce[3] = 0;
sel = 0;
s = 2; 
clear = 0;
#10

w[0] = 0; w[1] = 0; w[2] = 0;                   //Pull in M0 to DFF4
ce[0] = 0; ce[1] = 0; ce[2] = 0; ce[3] = 1;
sel = 0;
s = 2; 
clear = 0;
#10

w[0] = 0; w[1] = 0; w[2] = 0;                   //Pull in M1 to DFF2
ce[0] = 0; ce[1] = 1; ce[2] = 0; ce[3] = 0;
sel = 1;
s = 1; 
clear = 0;
#10

w[0] = 0; w[1] = 0; w[2] = 0;                   //Pull in final answer to DFF4
ce[0] = 0; ce[1] = 0; ce[2] = 0; ce[3] = 1;
sel = 1;
s = 1; 
clear = 0;
#10

w[0] = 0; w[1] = 0; w[2] = 1;                   //Pull in final answer to DFF3
ce[0] = 0; ce[1] = 0; ce[2] = 1; ce[3] = 0;
sel = 1;
s = 1; 
clear = 0;
#10

w[0] = 0; w[1] = 0; w[2] = 1;                   //Pull in final answer to DFF3
ce[0] = 0; ce[1] = 0; ce[2] = 0; ce[3] = 0;
sel = 1;
s = 1; 
clear = 0;
#10


M0 = 1; M1 = 0; M2 = 1; Cin = 0;

w[0] = 0; w[1] = 0; w[2] = 0;                   //clear the DFFS
ce[0] = 0; ce[1] = 0; ce[2] = 0; ce[3] = 0;
sel = 0;
s = 0; 
#2 clear = 1;
#20

w[0] = 0; w[1] = 0; w[2] = 0;                   //Pull in M0 to DFF1
ce[0] = 1; ce[1] = 0; ce[2] = 0; ce[3] = 0;
sel = 0;
s = 2; 
clear = 0;
#10

w[0] = 0; w[1] = 0; w[2] = 0;                   //Pull in M0 to DFF4
ce[0] = 0; ce[1] = 0; ce[2] = 0; ce[3] = 1;
sel = 0;
s = 2; 
clear = 0;
#10

w[0] = 0; w[1] = 0; w[2] = 0;                   //Pull in M1 to DFF2
ce[0] = 0; ce[1] = 1; ce[2] = 0; ce[3] = 0;
sel = 1;
s = 1; 
clear = 0;
#10

w[0] = 0; w[1] = 0; w[2] = 0;                   //Pull in final answer to DFF4
ce[0] = 0; ce[1] = 0; ce[2] = 0; ce[3] = 1;
sel = 1;
s = 1; 
clear = 0;
#10

w[0] = 0; w[1] = 0; w[2] = 1;                   //Pull in final answer to DFF3
ce[0] = 0; ce[1] = 0; ce[2] = 1; ce[3] = 0;
sel = 1;
s = 1; 
clear = 0;
#10

w[0] = 0; w[1] = 0; w[2] = 1;                   //Pull in final answer to DFF3
ce[0] = 0; ce[1] = 0; ce[2] = 0; ce[3] = 0;
sel = 1;
s = 1; 
clear = 0;
#10



M0 = 1; M1 = 1; M2 = 1; Cin = 1;

w[0] = 0; w[1] = 0; w[2] = 0;                   //clear the DFFS
ce[0] = 0; ce[1] = 0; ce[2] = 0; ce[3] = 0;
sel = 0;
s = 0; 
#2 clear = 1;
#20

w[0] = 0; w[1] = 0; w[2] = 0;                   //Pull in M0 to DFF1
ce[0] = 1; ce[1] = 0; ce[2] = 0; ce[3] = 0;
sel = 0;
s = 2; 
clear = 0;
#10

w[0] = 0; w[1] = 0; w[2] = 0;                   //Pull in M0 to DFF4
ce[0] = 0; ce[1] = 0; ce[2] = 0; ce[3] = 1;
sel = 0;
s = 2; 
clear = 0;
#10

w[0] = 0; w[1] = 0; w[2] = 0;                   //Pull in M1 to DFF2
ce[0] = 0; ce[1] = 1; ce[2] = 0; ce[3] = 0;
sel = 1;
s = 1; 
clear = 0;
#10

w[0] = 0; w[1] = 0; w[2] = 0;                   //Pull in final answer to DFF4
ce[0] = 0; ce[1] = 0; ce[2] = 0; ce[3] = 1;
sel = 1;
s = 1; 
clear = 0;
#10

w[0] = 0; w[1] = 0; w[2] = 1;                   //Pull in final answer to DFF3
ce[0] = 0; ce[1] = 0; ce[2] = 1; ce[3] = 0;
sel = 1;
s = 1; 
clear = 0;
#10

w[0] = 0; w[1] = 0; w[2] = 1;                   //Pull in final answer to DFF3
ce[0] = 0; ce[1] = 0; ce[2] = 0; ce[3] = 0;
sel = 1;
s = 1; 
clear = 0;
#10


M0 = 0; M1 = 1; M2 = 0; Cin = 1;

w[0] = 0; w[1] = 0; w[2] = 0;                   //clear the DFFS
ce[0] = 0; ce[1] = 0; ce[2] = 0; ce[3] = 0;
sel = 0;
s = 0; 
#2 clear = 1;
#20

w[0] = 0; w[1] = 0; w[2] = 0;                   //Pull in M0 to DFF1
ce[0] = 1; ce[1] = 0; ce[2] = 0; ce[3] = 0;
sel = 0;
s = 2; 
clear = 0;
#10

w[0] = 0; w[1] = 0; w[2] = 0;                   //Pull in M0 to DFF4
ce[0] = 0; ce[1] = 0; ce[2] = 0; ce[3] = 1;
sel = 0;
s = 2; 
clear = 0;
#10

w[0] = 0; w[1] = 0; w[2] = 0;                   //Pull in M1 to DFF2
ce[0] = 0; ce[1] = 1; ce[2] = 0; ce[3] = 0;
sel = 1;
s = 1; 
clear = 0;
#10

w[0] = 0; w[1] = 0; w[2] = 0;                   //Pull in final answer to DFF4
ce[0] = 0; ce[1] = 0; ce[2] = 0; ce[3] = 1;
sel = 1;
s = 1; 
clear = 0;
#10

w[0] = 0; w[1] = 0; w[2] = 1;                   //Pull in final answer to DFF3
ce[0] = 0; ce[1] = 0; ce[2] = 1; ce[3] = 0;
sel = 1;
s = 1; 
clear = 0;
#10

w[0] = 0; w[1] = 0; w[2] = 1;                   //Pull in final answer to DFF3
ce[0] = 0; ce[1] = 0; ce[2] = 0; ce[3] = 0;
sel = 1;
s = 1; 
clear = 0;
#10

$stop;
end
endmodule