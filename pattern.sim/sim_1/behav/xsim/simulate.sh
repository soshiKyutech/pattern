#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2021.2.1 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Thu Jan 12 23:41:19 JST 2023
# SW Build 3414424 on Sun Dec 19 10:57:14 MST 2021
#
# IP Build 3405791 on Sun Dec 19 15:54:35 MST 2021
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# simulate design
echo "xsim pattern_tb_behav -key {Behavioral:sim_1:Functional:pattern_tb} -tclbatch pattern_tb.tcl -log simulate.log"
xsim pattern_tb_behav -key {Behavioral:sim_1:Functional:pattern_tb} -tclbatch pattern_tb.tcl -log simulate.log

