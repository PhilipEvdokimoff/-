# Codeforces 522A: Репосты

a = [('polycarp',1)]
n = int(input())
for i in range(n):
    x,y = input().lower().split(' reposted ')
    for z in a:
        if y == z[0]:
            a.append((x,z[1]+1))
m = 0
for i in a:
    if m < i[1]:
        m = i[1]
print(m)
