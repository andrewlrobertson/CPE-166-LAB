module multiplier(da, db, load_ab, load_p, shftb, shftp, clk, clr, out);

input clr, clk, shftb, shftp, load_ab, load_p;
input [3:0] da, db;
output [7:0] out;

wire [7:0] out;
wire [3:0] y, phw, plw, pp, d1, qa, qb, d0;
wire c_out1,cbuff;

assign d0 = 4'b0000;

ph ph1(clk, clr, load_p, shftp, cbuff, pp, phw);

pl pl1(clk,clr,0,shftp,phw[0],0,plw);

dffa dffa1(clk,clr,load_ab,da,qa);

dffb dffb1(clk,clr,load_ab,shftb,db,qb);

dffcarry dffcarry1(clk, clr, load_p, c_out1,cbuff );

MUX2_1 mux1(d0,qa,qb[0],y);

adder add1(phw,y,c_out1,pp);

assign out = {phw, plw};

endmodule
