`timescale 1ns/1ps

module ph_tb;

reg       clk, clr, load, sft, carry;
reg [3:0] dph;

wire [3:0] qph;

ph   uut ( .clk(clk), .clr(clr), .load(load),.sft(sft), .carry(carry), .dph(dph), .qph(qph));

initial  clk = 0;

always   #10 clk = ~ clk;

initial
begin
    clr = 1; load = 0; sft = 0; carry = 1;
    dph  = 4'b1011;
   
    #24  clr = 0; load = 1; 
    #20  load = 0;
	#20  sft = 1;
	#20
	#20
	#20  sft = 0;
	#20  clr = 1;
	#20  clr = 0;
    #60 $stop;
end

endmodule