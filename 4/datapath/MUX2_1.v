module MUX2_1(d0, d1, s, y);
input 	  	  d1, d0, s;
output 		  y;

reg    	  	  y;

always@( s or d1 or d0 )
begin
   if (s)
          y = d1;
   else
          y = d0;
end

endmodule