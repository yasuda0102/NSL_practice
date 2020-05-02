#!/bin/bash

for FILE in `ls *.v a.out *.vcd | grep -e "[^dpram\.v]"`
do
    rm $FILE
done
