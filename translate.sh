#!/bin/bash

nsl2vl adder32.nsl
nsl2vl shifter.nsl
nsl2vl multiplier32.nsl
nsl2vl driver.nsl -target driver -verisim2
iverilog adder32.v shifter.v multiplier32.v driver.v