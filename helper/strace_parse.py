#!/usr/bin/env python

# Usage:
# strace -f --trace=%file -o log.txt result/bin/program
# python strace_parse.py log.txt

import sys
import re

filename = sys.argv[1]

libraries = {}

NOT_FOUND = 1
FOUND = 2

f = open(filename)
for line in f:
    result = re.search(r'openat(.*)/([^/]+\.so[^"]*)(.*) = -1', line)
    if result != None:
        result = result.group(2)
        if result not in libraries:
            libraries[result] = NOT_FOUND

    result = re.search(r'openat(.*)/([^/]+\.so[^"]*)(.*) = ([0-9]+)', line)
    if result != None:
        result = result.group(2)
        libraries[result] = FOUND

for k in sorted(libraries.keys()):
    # if libraries[k] == FOUND:
    #     print('{}: Found'.format(k))
    if libraries[k] == NOT_FOUND:
        print('{}: Not found'.format(k))
