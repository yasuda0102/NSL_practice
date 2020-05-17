#!/usr/bin/python3

import struct
import sys
import re

def main():
    if len(sys.argv) != 3:
        print("Usage: " + sys.argv[0] + " <input file> <output file>")
        exit()

    binfile = 0
    try:
        binfile = open(sys.argv[1], "rb")
    except IOError:
        print("File Not Found.")
        exit()

    data = binfile.read()
    binfile.close()

    txtfile = open(sys.argv[2],"w")

    hex = ""
    for i in range(len(data)):
        hex = hex + format(struct.unpack_from("B", data, i)[0], "02x") + "\n"
    
    txtfile.write(hex)
    txtfile.close()

if __name__ == "__main__":
    main()