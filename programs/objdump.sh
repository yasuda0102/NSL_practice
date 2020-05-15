#!/bin/bash

riscv32-unknown-elf-objdump -D $1 | less