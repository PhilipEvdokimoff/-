# №3 Является ли данное число дробным с плавающей запятой (без ведущих нулей)?

import re

s1 = "49.007"
s2 = "00049.007"
t1 = "17"
t2 = "0017"

def f(s):
    f = re.match(r'^(0|[1-9]*\.\d+)$', s)
    if f:
        print("%s is a floating-point fractional number without leading zones" % s)
    else:
        print("%s is not a floating-point fractional number without leading zones" % s)

f(s1)
f(t1)
f(s2)
f(t2)
