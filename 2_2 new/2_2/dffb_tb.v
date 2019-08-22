`timescale 1ns/1ps

module dffb_tb;

reg       clk, clr, load, sft;
reg [3:0] db;

wire [3:0] qb;

dffb   uut ( .clk(clk), .clr(clr), .load(load),.sft(sft), .db(db), .qb(qb));

initial  clk = 0;

always   #10 clk = ~ clk;

initial
begin
    clr = 1; load = 0; sft = 0;
    db  = 4'b1011;
   
    #24  clr = 0; load = 1; 
    #20  load = 0;
	#20  sft = 1;
	#20
	#20
	#20  sft = 0;
    #60 $stop;
end

endmodule