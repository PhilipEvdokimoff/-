# Codeforces ИТМО: B. Не пусти козла в огород

import math

n = int(input())

a = 1
s = []
while a <= n:
    if n % a == 0:
        s.append(a)
    a += 1
print(s)

for i in range(len(s)):
    if s[i] > math.sqrt(n):
        m = s[i-1]
        break
    elif s[i] == math.sqrt(n):
        m = s[i]
print(m)
