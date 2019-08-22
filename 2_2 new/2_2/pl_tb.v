`timescale 1ns/1ps

module pl_tb;

reg       clk, clr, load, sft, ph_low;
reg [3:0] dpl;

wire [3:0] qpl;

pl   uut ( .clk(clk), .clr(clr), .load(load),.sft(sft), .ph_low(ph_low), .dpl(dpl), .qpl(qpl));

initial  clk = 0;

always   #10 clk = ~ clk;

initial
begin
    clr = 1; load = 0; sft = 0; ph_low = 1;
    dpl  = 4'b1011;
   
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