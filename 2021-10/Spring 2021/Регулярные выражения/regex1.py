# №1 Чётное ли данное число от 20 до 79 включительно?

import re

s = "44"
t = "49"

def f(s):
    f = re.match(r'^([2-7][0|2|4|6|8])$', s)
    if f:
        print("%s is an even number" % s)
    else:
        print("%s is an odd number" % s)

f(s)
f(t)
