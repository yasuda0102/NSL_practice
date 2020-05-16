#!/bin/bash

nsl2vl -O adder32.nsl
nsl2vl -O shifter32.nsl
nsl2vl -O multiplier32.nsl
nsl2vl -O alu32.nsl
nsl2vl -O comparator32.nsl
nsl2vl -O regfile.nsl
nsl2vl -O primitive_cpu.nsl
nsl2vl driver.nsl -target driver -verisim2
iverilog driver.v adder32.v shifter32.v multiplier32.v alu32.v comparator32.v regfile.v dpram.v primitive_cpu.v