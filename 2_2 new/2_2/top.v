module top(topclock, topreset, multa, multb, topout);

input topclock, topreset;
input [3:0] multa, multb;
output [7:0] topout;

wire [7:0] topout;
wire loadmults, loadout, shiftmult, shiftout, clear;

myfsm myfsm1(topclock, topreset, clear, shiftmult, shiftout, loadmults, loadout);

multiplier multiplier1(multa, multb, loadmults, loadout, shiftmult, shiftout, topclock, clear, topout);

endmodule