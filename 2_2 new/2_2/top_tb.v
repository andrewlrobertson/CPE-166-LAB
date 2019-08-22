//default timescale

module top_tb();

reg topclock_tb, topreset_tb;
reg [3:0] multa_tb, multb_tb;
wire [7:0] topout_tb;

top uut(topclock_tb, topreset_tb, multa_tb, multb_tb, topout_tb);

always
begin
#5 topclock_tb = ~topclock_tb; 
end

initial
begin
topclock_tb = 0;

multa_tb = 11; multb_tb = 13;
#2 topreset_tb = 1;
#10 topreset_tb = 0;
#150

multa_tb = 10; multb_tb = 5;
#2 topreset_tb = 1;
#10 topreset_tb = 0;
#150

multa_tb = 1; multb_tb = 15;
#2 topreset_tb = 1;
#10 topreset_tb = 0;
#150

multa_tb = 15; multb_tb = 1;
#2 topreset_tb = 1;
#10 topreset_tb = 0;
#150

multa_tb = 0; multb_tb = 15;
#2 topreset_tb = 1;
#10 topreset_tb = 0;
#150

multa_tb = 15; multb_tb = 0;
#2 topreset_tb = 1;
#10 topreset_tb = 0;
#150

multa_tb = 15; multb_tb = 15;
#2 topreset_tb = 1;
#10 topreset_tb = 0;
#150

$stop;
end
endmodule