module top(reset, clk, m0, m1, m2, cin, dout);

input clk, reset, m0, m1, m2, cin;
output dout;

wire clr_w;
wire [1:0] sel_w;
wire [2:0] s_w, w_w;
wire [3:0] ce_w;

myfsm myfsm1(clk, reset, clr_w, sel_w, w_w, s_w, ce_w);

datapath datapath1(clr_w, w_w, ce_w, sel_w, s_w, clk, m0, m1, m2, cin, dout);

endmodule