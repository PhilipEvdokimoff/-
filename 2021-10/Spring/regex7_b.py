# №7 URL (б - с выводом элементов ссылки)

import re

s = "http://a.b.cjifow/"
t = "https://volki.auff/"
q = "ssh://volki.auff/"
l = ['Ссылка:','Протокол:','Домен 2-го уровня:','Домен верхнего уровня:']

def f(s):
    f = re.match(r'^((https?|ssh|ftp)\://([A-Za-z]+\.)+([A-Za-z]+)/)$', s)
    
    if f:
        print("%s is a URL" % s)
        print(f.groups())
        for i in range(len(f.groups())):
            print(l[i] + " " + f.groups()[i])
            
        print("\n")
    else:
        print("%s is not a URL" % s)

f(s)
f(t)
f(q)
