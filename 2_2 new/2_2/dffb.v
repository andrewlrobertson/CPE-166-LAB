module dffb (clk, clr, load, sft, db, qb);
input        clk, clr, load, sft;
input [3:0]  db;
output [3:0] qb;

reg    [3:0] qb;

always@(posedge clr or  posedge clk)
begin
    if(clr) qb <= 0;
    else if (load)
       qb <= db;
    else if (sft)
       qb <= { 1'b0,  qb[3:1] };

       // qb[3] <= 1'b0;
       // qb[2] <= qb[3];
       // qb[1] <= qb[2];
       // qb[0] <= qb[1];

end

endmodule
