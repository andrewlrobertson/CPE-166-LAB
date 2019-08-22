module myfsm(clk, rst, clr, sel, w, s, ce);

input clk, rst;
output clr;
output [1:0] sel; 
output [2:0] w, s; 
output [3:0] ce; 
reg clr;
reg [1:0] sel; 
reg [2:0] w, s; 
reg [3:0] ce; 

parameter s0 = 0, s1 = 1, s2 = 2, s3 = 3, s4 = 4, s5 = 5, s6 = 6;
		  
reg [2:0] cs, ns;

always @ (posedge rst or posedge clk)
begin
	if(rst) cs <= s0;
	else    cs <= ns;
end
	
always @ (cs)
begin
	case(cs)
	s0:  	 ns = s1;
	s1:  	 ns = s2;
	s2:  	 ns = s3;
	s3:  	 ns = s4;
	s4:  	 ns = s5;
	s5:  	 ns = s6;
	s6:  	 ns = s6;
	default: ns = s0; 
	endcase
end

always @ (cs)
begin

	case(cs)
	s0:  	 	begin
	            clr = 1;
				sel = 0;
				w = 0;
				s = 0;
				ce = 0;
				end
				
	s1:  	 	begin
	            clr = 0;
				sel = 0;
				w = 0;
				s = 2;
				ce = 1;
				end
				
	s2:  	 	begin
	            clr = 0;
				sel = 0;
				w = 0;
				s = 2;
				ce = 8;
				end
				
	s3:  	 	begin
	            clr = 0;
				sel = 1;
				w = 0;
				s = 1;
				ce = 2;
				end
				
	s4:  	 	begin
	            clr = 0;
				sel = 1;
				w = 0;
				s = 1;
				ce = 8;
				end
				
	s5:  	 	begin
	            clr = 0;
				sel = 1;
				w = 4;
				s = 1;
				ce = 4;
				end
				
	s6:  	 	begin
	            clr = 0;
				sel = 1;
				w = 4;
				s = 1;
				ce = 0;
				end
				
	default: 	begin
	            clr = 1;
				sel = 0;
				w = 0;
				s = 0;
				ce = 0;
				end
	endcase

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
end
endmodule