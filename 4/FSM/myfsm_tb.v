//default timescale

module myfsm_tb();

reg clk, rst;
wire clr;
wire [1:0] sel; 
wire [2:0] w, s; 
wire [3:0] ce; 

myfsm uut(clk, rst, clr, sel, w, s, ce);

always
begin
#5 clk = ~clk;
end

initial 
begin
clk = 0;
#2 rst = 1;
#10 rst = 0;
#150
$stop;
end
endmodule

	/*case(cs)
	s0:  	 {clr, sel, w, s, ce} = {1,0,0,0,0};
	s1:  	 {clr, sel, w, s, ce} = {0,0,0,2,1};
	s2:  	 {clr, sel, w, s, ce} = {0,0,0,2,8};
	s3:  	 {clr, sel, w, s, ce} = {0,1,0,1,2};
	s4:  	 {clr, sel, w, s, ce} = {0,1,0,1,8};
	s5:  	 {clr, sel, w, s, ce} = {0,1,4,1,4};
	s6:  	 {clr, sel, w, s, ce} = {0,1,4,1,0};
	default: {clr, sel, w, s, ce} = {1,0,0,0,0}; 
	endcase*/