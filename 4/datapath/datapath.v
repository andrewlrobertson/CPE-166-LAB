module datapath(clear, w, ce, sel, s, clock, M0, M1, M2, Cin, dout);

input clear, clock, M0, M1, M2, Cin;
input [1:0] sel;
input [2:0] w, s;
input [3:0] ce;
output dout;

wire [3:0] y;
wire [2:0] r;
wire fourout, qout;

MUX2_1 two1(M0, qout, w[0], y[0]);
MUX2_1 two2(M1, qout, w[1], y[1]);
MUX2_1 two3(M2, qout, w[2], y[2]);

dffa dff1(clock, clear, ce[0], y[0], r[0]);
dffa dff2(clock, clear, ce[1], y[1], r[1]);
dffa dff3(clock, clear, ce[2], y[2], r[2]);

MUX4_1 four1(r[0], r[1], r[2], 0, sel, fourout);

ALU ALU1(qout, fourout, s, Cin, y[3]);

dffa dff4(clock, clear, ce[3], y[3], qout);

assign dout = r[2];

endmodule