# 9 задача

def f(m,c):
    r = 0
    n = 1
    t = 0
    while m != 0:
        t = 0
        while m >= c:
            t = t+1
            m = m-c
        r = r + (m*n)
        n = n*10
        m = t
    return r

i = 0
while 1:
    if f(i,8) == 31435:
        print(i)
    i += 1
