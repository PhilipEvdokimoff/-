# Извлечение квадратного корня

n = int(input())

r = n + 1
l = 0

while (r - l) > 1:
    m = (r + l) // 2
    if m*m > n:
        r = m
    else:
        l = m

print(l)

'''
n = int(input())
a = [1,3,5,11,13,17,19,25]

r = len(a)
l = 0

while (r - l) > 1:
    m = (r + l) // 2
    if a[m] > n:
        r = m
    else:
        l = m

if a[l] == n:
    print(l)
else:
    print(-1)
'''
