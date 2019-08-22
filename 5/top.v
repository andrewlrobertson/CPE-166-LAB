module top(A,B,Y);

input [31:0] A, B;
output [31:0] Y;
reg [31:0] Y;
reg [46:0] mult;
reg ms;
reg [23:0] amant, bmant;


always @ (A,B) begin
	if(A[30:0] == 0 | B[30:0] == 0) begin          //if A or B are +/- 0. Assign exp and mant bits to represent zero
		Y[30:0] = 0;
	end
	else begin                                     //otherwise calculate exponent and mantissa
		amant = {1'b1, A[22:0]};
		bmant = {1'b1, B[22:0]};                
		Y[30:23] = A[30:23] -8'b01111111 + B[30:23];
	end
	Y[31] = A[31] ^ B[31];                         //no matter what, calculate the sign
end

always @ (amant | bmant) begin
    {ms,mult} = amant * bmant;
end

always @ (ms | mult) begin
    if(ms == 1) begin
        {ms,mult}={1'b0,ms,mult[46:1]};
        Y[30:23] = Y[30:23]+1;
    end
    else begin
        Y[22:0] = mult[45:23];
    end
end
endmodule