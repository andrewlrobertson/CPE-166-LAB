module fourby4_combo_mult(input [3:0] x, y, output [7:0] p);
wire [31:0] w;
assign w[0]   = (x[3]&y[0]);
assign w[1]   = (x[2]&y[0]);
assign w[2]   = (x[1]&y[0]);
assign w[3]   = (x[3]&y[1]);
assign w[4]   = (x[2]&y[1]);
assign w[5]   = (x[1]&y[1]);
assign w[6]   = (x[0]&y[1]);
assign w[14]  = (x[3]&y[2]);
assign w[15]  = (x[2]&y[2]);
assign w[16]  = (x[1]&y[2]);
assign w[17]  = (x[0]&y[2]);
assign w[25]  = (x[3]&y[3]);
assign w[26]  = (x[2]&y[3]);
assign w[27]  = (x[1]&y[3]);
assign w[28]  = (x[0]&y[3]);

assign p[0] = (x[0]&y[0]);

myHA h1(w[3],w[8],w[7],w[11]);
myHA h2(w[2],w[6],w[10],p[1]);
myHA h3(w[13],w[17],w[21],p[2]);
myHA h4(w[24],w[28],w[31],p[3]);

myFA f1(w[0],w[4],w[9],w[8],w[12]);
myFA f2(w[1],w[5],w[10],w[9],w[13]);
myFA f3(w[7],w[14],w[19],w[18],w[22]);
myFA f4(w[11],w[15],w[20],w[19],w[23]);
myFA f5(w[12],w[16],w[21],w[20],w[24]);
myFA f6(w[18],w[25],w[29],p[7],p[6]);
myFA f7(w[22],w[26],w[30],w[29],p[5]);
myFA f8(w[23],w[27],w[31],w[30],p[4]);
endmodule

