# №7 URL (оригинал и а)

import re

s = "http://a.b.cjifow/"
t = "https://volki.auff/"
q = "ssh://volki.auff/"

def f(s):
    f = re.match(r'^((https?|ssh|ftp)\://(([A-Za-z]+)\.)+([A-Za-z]+)/)$', s)
#    f = re.match(r'^((https?|ssh|ftp)\://(([A-Za-z]+)\.)+([A-Za-z]+)/)$', s)
    
    if f:
        print("%s is a URL" % s)
    else:
        print("%s is not a URL" % s)

f(s)
f(t)
f(q)
