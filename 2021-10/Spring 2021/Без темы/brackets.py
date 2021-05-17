# Правильны скобочные записи

l = input() # ()(())() / ()(()))(
s = []
for i in l:
    s.append(i)

'''def f(x,y): 
    if a[x][y] = -1: 
        z = ... 
        a[x][y] = z 
        return z 
    else: 
        return a[x][y]'''

def f(x,y,z):
    if y > 0:
        if x < 2*z:
            return (s[x+1][y+1] + s[x+1][y-1])
        elif x == 2*z:
            return 0
    elif y == 0:
        if x < 2*z:
            return s[x+1][y+1]
        elif x == 2*z:
            return 1

def g(s):
    n = 0
    for i in s:
        if n >= 0:
            if i == "(":
                n += 1
            elif i == ")":
                n -= 1
            else:
                pass
        if n < 0:
            return False
    return n == a

a = []
if g(s):
    for i in range(len(s)):
        a.append()

print(g(s))
#print(f(0,0,len(s)))
