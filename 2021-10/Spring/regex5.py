# №5 Является ли данное число дробным с плавающей запятой?
# (допускается знак "-" и отсутствие целой или дробной части)

import re

s = "49.007"
t = ".17"
r = "4."
q1 = "-8."
q2 = "-.8"
q3 = "-8.8"
w = "69"

def f(s):
    f = re.match(r'^(-?\d*\.\d*)$', s)
    if f:
        print("%s is a floating-point fractional number" % s)
    else:
        print("%s is not a floating-point fractional number" % s)

f(s)
f(t)
f(r)
f(q1)
f(q2)
f(q3)
f(w)
