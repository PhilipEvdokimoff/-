# №2 Является ли данное число дробным с плавающей запятой?

import re

s = "49.007"
t = "17"

def f(s):
    f = re.match(r'^(\d+\.\d+)$', s)
    if f:
        print("%s is a floating-point fractional number" % s)
    else:
        print("%s is not a floating-point fractional number" % s)

f(s)
f(t)
