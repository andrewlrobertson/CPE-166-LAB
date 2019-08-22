module MUX4_1(d0, d1, d2, d3, s, y);
	input 	  	  d3, d2, d1, d0; 
	input 		  [1:0] s;
	output 		  y;

	reg    	  	  y;

	always@( s or d3 or d2 or d1 or d0 )
	begin
		case (s)
			0 : y = d0;
			1 : y = d1;
			2 : y = d2;
			3 : y = d3;
			default : y = d0;
		endcase
	end
endmodule