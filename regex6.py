# №6 IP-адрес

import re

s = "255.55.255.0"
r = "255.255.255.255."
t = "255.567.55.0"

def g(s):    
    g = re.match(r'^((((\d{1,2})|([1]\d\d)|([2][0-4]\d)|([2][5][0-5]))\.){3}((\d{1,2})|([1]\d\d)|([2][0-4]\d)|([2][5][0-5])))$', s)
    if g:
        print("%s is an IP address" % s)
    else:
        print("%s is not an IP address" % s)

g(s)
g(r)
g(t)
