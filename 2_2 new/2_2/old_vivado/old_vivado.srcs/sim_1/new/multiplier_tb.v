`timescale 1ns / 1ps

module multiplier_tb();
wire [7:0] out_tb;
reg [3:0] da_tb, db_tb;
reg clr_tb, clk_tb, shftb_tb, shftp_tb, load_ab_tb, load_p_tb;

multiplier uut(da_tb, db_tb, load_ab_tb, load_p_tb, shftb_tb, shftp_tb, clk_tb, clr_tb, out_tb);

always
begin
#5 clk_tb = ~clk_tb;
end

initial
begin
clk_tb = 0; da_tb = 4'b1011; db_tb = 4'b1101;
#2 
clr_tb = 1; shftb_tb = 0; shftp_tb = 0; load_ab_tb = 0; load_p_tb = 0;
#10
clr_tb = 0; shftb_tb = 0; shftp_tb = 0; load_ab_tb = 1; load_p_tb = 0;
#10
clr_tb = 0; shftb_tb = 0; shftp_tb = 0; load_ab_tb = 0; load_p_tb = 1;
#10
clr_tb = 0; shftb_tb = 0; shftp_tb = 1; load_ab_tb = 0; load_p_tb = 0;
#10
clr_tb = 0; shftb_tb = 1; shftp_tb = 0; load_ab_tb = 0; load_p_tb = 0; 
#10
clr_tb = 0; shftb_tb = 0; shftp_tb = 0; load_ab_tb = 0; load_p_tb = 1;
#10
clr_tb = 0; shftb_tb = 0; shftp_tb = 1; load_ab_tb = 0; load_p_tb = 0;
#10
clr_tb = 0; shftb_tb = 1; shftp_tb = 0; load_ab_tb = 0; load_p_tb = 0; 
#10
clr_tb = 0; shftb_tb = 0; shftp_tb = 0; load_ab_tb = 0; load_p_tb = 1;
#10
clr_tb = 0; shftb_tb = 0; shftp_tb = 1; load_ab_tb = 0; load_p_tb = 0;
#10
clr_tb = 0; shftb_tb = 1; shftp_tb = 0; load_ab_tb = 0; load_p_tb = 0; 
#10
clr_tb = 0; shftb_tb = 0; shftp_tb = 0; load_ab_tb = 0; load_p_tb = 1;
#10
clr_tb = 0; shftb_tb = 0; shftp_tb = 1; load_ab_tb = 0; load_p_tb = 0;
#10
$stop;
end
endmodule
