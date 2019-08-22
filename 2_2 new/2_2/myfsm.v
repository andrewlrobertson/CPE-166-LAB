module myfsm(clk, rst, clr, shftb, shftp, loadab, loadp);

input clk, rst;
output clr, shftb, shftp, loadab, loadp;
reg clr, shftb, shftp, loadab, loadp;

parameter s0 = 0, s1 = 1, s2 = 2, s3 = 3, s4 = 4, s5 = 5, s6 = 6, 
          s7 = 7, s8 = 8, s9 = 9, s10 = 10, s11 = 11, s12 = 12, s13 = 13;
		  
reg [3:0] cs, ns;

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
	s6:  	 ns = s7;
	s7:  	 ns = s8;
	s8:  	 ns = s9;
	s9:  	 ns = s10;
	s10:	 ns = s11;
	s11: 	 ns = s12;
	s12: 	 ns = s13;
	s13:     ns = s13;
	default: ns = s0; 
	endcase
end

always @ (cs)
begin
	case(cs)
	s0:  	 {clr, shftb, shftp, loadab, loadp} = 5'b10000;
	s1:  	 {clr, shftb, shftp, loadab, loadp} = 5'b00010;
	s2:  	 {clr, shftb, shftp, loadab, loadp} = 5'b00001;
	s3:  	 {clr, shftb, shftp, loadab, loadp} = 5'b00100;
	s4:  	 {clr, shftb, shftp, loadab, loadp} = 5'b01000;
	s5:  	 {clr, shftb, shftp, loadab, loadp} = 5'b00001;
	s6:  	 {clr, shftb, shftp, loadab, loadp} = 5'b00100;
	s7:  	 {clr, shftb, shftp, loadab, loadp} = 5'b01000;
	s8:  	 {clr, shftb, shftp, loadab, loadp} = 5'b00001;
	s9:  	 {clr, shftb, shftp, loadab, loadp} = 5'b00100;
	s10:  	 {clr, shftb, shftp, loadab, loadp} = 5'b01000;
	s11:  	 {clr, shftb, shftp, loadab, loadp} = 5'b00001;
	s12:  	 {clr, shftb, shftp, loadab, loadp} = 5'b00100;
	s13:  	 {clr, shftb, shftp, loadab, loadp} = 5'b00000;
	default: {clr, shftb, shftp, loadab, loadp} = 5'b10000; 
	endcase
end
endmodule