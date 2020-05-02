#!/bin/bash

nsl2vl adder32.nsl
nsl2vl shifter32.nsl
nsl2vl multiplier32.nsl
nsl2vl alu32.nsl
nsl2vl regfile.nsl
nsl2vl mem.nsl
nsl2vl primitive_cpu.nsl
nsl2vl driver.nsl -target driver -verisim2
iverilog adder32.v shifter32.v multiplier32.v alu32.v regfile.v mem.v primitive_cpu.v driver.v