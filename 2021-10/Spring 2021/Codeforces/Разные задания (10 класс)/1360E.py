# Codeforces 1360E: Полигон

t = int(input())
s = []
for i in range(t):
    n = int(input())
    l = []
    for i in range(n):
        l.append(input())
    s.append(l)
    l.append(n)

def f(s):
    for i in range(s[-1]-1):
        for j in range(s[-1]-1):
            if s[i][j] == '1':
                if (s[i][j+1] == '1') or (s[i+1][j] == '1'):
                    pass
                else:
                    return False
            else:
                pass
    return True

for i in range(t):
    answer = True
    for j in range(s[i][-1]):
        answer = answer and f(s[i])
    if answer:
        print("Yes")
    else:
        print("No")
