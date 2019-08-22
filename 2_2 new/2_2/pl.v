module pl (clk, clr, load, sft, ph_low , dpl, qpl);
input        clk, clr, load, sft, ph_low;
input [3:0]  dpl;
output [3:0] qpl;

reg    [3:0] qpl;

always@(posedge clr or  posedge clk)
begin
    if(clr) qpl <= 0;
    else if (load)
       qpl <= dpl;
    else if (sft)
       qpl <= { ph_low,  qpl[3:1] };

       // qb[3] <= ph_low;
       // qb[2] <= qb[3];
       // qb[1] <= qb[2];
       // qb[0] <= qb[1];

end

endmodule