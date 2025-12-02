#!/usr/bin/python3
import sys

import urllib.parse

def main():
    if len(sys.argv) < 2:
        inp = input()
        print(urllib.parse.quote(inp))
    else:
        print(urllib.parse.quote(sys.argv[1]))

main()
