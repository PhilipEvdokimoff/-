# Codeforces 1519B: Торт - это ложь

t = int(input())

for i in range(t):
    n,m,k = map(int,input().split())
    if n * m - 1 == k:
        print('YES')
    else:
        print('NO')
