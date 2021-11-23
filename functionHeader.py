"""Gathers the names of functions defined at the top level and inserts a header at the top of the file with those function names."""

import re
import sys
from pathlib import Path
from pprint import pprint


# get the file name from the CLI args
# print("file:", sys.argv[1])
file_ = sys.argv[1]


# make sure the file exists
if not Path(file_).exists():
    print(f"'{file_}' not found")
    quit()

# create a regex to find all the function definitions at the top level, extract only the name and params
functions = re.compile("(?<=def )\w+?(?=\()")
# functions = re.compile(r"""
#         (?<=def )       # must be preceded by def keyword and a single space
#         \w+?            # any [A-Za-z_] of one or more, lazy
#         (?=\()          # look ahead for a left parenthesis""", re.X) 
# ^def \w+?\(.*?\)  # gets the args with type hints, too

# load the file into memory
string = open(file_, "r")
contents = string.read()
string.close()

# make a list of all the function names
matches = functions.findall(contents)
pprint(matches)

