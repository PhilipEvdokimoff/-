# Codeforces 1513C: Добавь единицу

n = int(input())
s = []
for i in range(n):
    x, y = list(input().split())
    s.append((x,y))

def g(s):
    s = str(s)
    if len(s) > 1:
        l = []
        for i in range(len(s)):
            l.append(int(s[i]))
        return l
    elif len(s) == 1:
        return [int(s)]

def h(s):
    sum = []
    for i in range(len(s)):
        sum = sum + g(s[i])
    s = sum
    return s

def f(s,n):
    m = 0
    while m < n:
        l = []
        s = h(s)
        for i in range(len(s)):
            l.append(int(s[i])+1)
        s = l
        s = h(s)
        m += 1
    return s

for i in s:
    print(len(f(g(i[0]),int(i[1]))))
