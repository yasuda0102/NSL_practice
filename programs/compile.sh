#!/bin/bash

FILENAME_NOEXT=`echo $1 | sed -e "s/\(.*\)\..*/\1/g"`

if [ $# -eq 0 ]
then
    echo "usage: ./compile.sh <C Source>"
    exit
fi

riscv32-unknown-elf-gcc -ffreestanding -nostartfiles -static -o $FILENAME_NOEXT $1
riscv32-unknown-elf-objcopy -O binary $FILENAME_NOEXT $FILENAME_NOEXT.bin
rm $FILENAME_NOEXT