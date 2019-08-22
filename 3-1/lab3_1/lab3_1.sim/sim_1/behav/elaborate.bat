@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto 14d44b4b3e68449c8f5ac8f363c50c68 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot top_tb_behav xil_defaultlib.top_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
