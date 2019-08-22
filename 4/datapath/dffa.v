module dffa (clk, clr, load, da, qa);
input        clk, clr, load, da;
output 		 qa;
reg     	 qa;

always@(posedge clr or  posedge clk)
begin
    if(clr) qa <= 0;
    else if (load)
       qa <= da;
end

endmodule










 