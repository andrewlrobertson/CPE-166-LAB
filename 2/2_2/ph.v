module ph (clk, clr, load, sft, carry , dph, qph);
input        clk, clr, load, sft, carry;
input [3:0]  dph;
output [3:0] qph;

reg    [3:0] qph;

always@(posedge clr or  posedge clk)
begin
    if(clr) qph <= 0;
    else if (load)
       qph <= dph;
    else if (sft)
       qph <= { carry,  qph[3:1] };

       // qb[3] <= carry;
       // qb[2] <= qb[3];
       // qb[1] <= qb[2];
       // qb[0] <= qb[1];

end

endmodule