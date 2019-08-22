


`timescale 1ns/1ps

module dffa_tb;
reg       clk, clr, load, da;
wire  	  qa;
dffa uut ( clk, clr, load, da, qa );

initial  clk = 0;
always   #10 clk = ~clk;

initial
begin
    #2
    clr = 1; load = 0;
    da  = 4'b1;  
    #20  clr = 0; load = 1;
    #20  load = 0; clr = 1;
    #60 $stop;
end

endmodule






