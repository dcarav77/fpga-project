#!/usr/bin/env bash
set -e
mkdir -p build
iverilog -g2012 -o build/top_tb src/top.v sim/top_tb.v
vvp build/top_tb
echo "VCD at build/top_tb.vcd"
