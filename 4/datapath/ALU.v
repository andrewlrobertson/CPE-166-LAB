module ALU(a, b, s, Cin, y);
	input 	  	  a, b, Cin; 
	input 		  [2:0] s;
	output 		  y;

	reg    	  	  y;

	always@( s or a or b or Cin )
	begin
		case (s)
			0 : y = a + b + Cin;
			1 : y = a + ~b + Cin;
			2 : y = b;
			3 : y = ~(a & b);
			4 : y = (a & b);
			5 : y = (a | b);
			6 : y = ~a;
			7 : y = (a ^ b);
			default : y = 0;
		endcase
	end
endmodule