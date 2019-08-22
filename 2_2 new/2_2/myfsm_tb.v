//default timescale

module myfsm_tb();

reg clk_tb, rst_tb;
wire clr_tb, shftb_tb, shftp_tb, loadab_tb, loadp_tb;

myfsm uut(clk_tb, rst_tb, clr_tb, shftb_tb, shftp_tb, loadab_tb, loadp_tb);

always
begin
#5 clk_tb = ~clk_tb;
end

initial 
begin
clk_tb = 0;
#2 rst_tb = 1;
#10 rst_tb = 0;
#150
$stop;
end
endmodule