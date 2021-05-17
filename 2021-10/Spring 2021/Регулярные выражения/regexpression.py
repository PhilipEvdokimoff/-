import re

s1 = "0123456789"
s2 = "What matters is AUFF"

f = re.match(r'^0*([1-9][0-9]*)$', s1)
g = re.match(r'^(([A-Z]|[a-z]|\s)*)$', s2)

if f:
    print("Number %s without leading zones is %s" % (s1, f.group(1)))
if g:
    print("Number %s without leading zones is %s" % (s2, g.group(1)))
else:
    print("Match failed")
