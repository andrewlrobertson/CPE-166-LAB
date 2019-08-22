module multiplier(rst, clk, sft, load, out, da, db);
input rst, clk, sft, load;
input [3:0] da, db;
output [7:0] out;

always @ (posedge clk)

if(rst == 1)
begin
ph ph1(clk,1,0,0,,,);
pl pl1(clk,1,0,0,,,);
dffa dffa1(clk,1,0,,);
dffb dffb1(clk,1,0,0,,);
end

else if(load == 1)
begin
dffa dffa2(clk, 0, 1, da, qa);
dffb dffb2(clk, 0, 1, 0, db, qb);
end

else if (sft == 1)
dffb dffb3(clk, 0, 0, 1, db, qb);