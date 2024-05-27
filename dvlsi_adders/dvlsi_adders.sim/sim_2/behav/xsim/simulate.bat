@echo off
REM ****************************************************************************
REM Vivado (TM) v2018.3 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Sun Mar 24 23:52:36 +0200 2024
REM SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
REM
REM Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
call xsim full_adder_tb_str_behav -key {Behavioral:sim_2:Functional:full_adder_tb_str} -tclbatch full_adder_tb_str.tcl -view C:/Users/zoege/OneDrive/Documents/ece/8th semester/dvlsi/Lab2/Ex2/dvlsi_adders/full_adder_tb_str_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
