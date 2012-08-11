#!/usr/bin/python
import sys
import re

# example 
# cat file | ./extract.py  '\]\[ *(\d+).* in (\d+)' '<%s> <%s>'


pattern=sys.argv[1]
s=sys.argv[2]

for line in sys.stdin:
   m=re.search(pattern, line)
   if m :
     print(s % m.groups() )
