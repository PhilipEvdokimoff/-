'''3) Текстовый файл содержит не более чем 10^6 символов X, Y и Z
Определите максимальное количество идущих подряд символов,
среди которых каждые два соседних различные.'''

x1 = open('x1.txt', 'r')

s = ""
for i in x1:
    s = s + i

print(s)
print("\n")

n = 0
m = ""
M = ""

for i in range(len(s)):
    if s[i-1] != s[i]:
        n += 1
        m = m + s[i]
    else:
        if len(m) > len(M):
            M = m
        n = 1
        m = s[i]
    
if len(m) > len(M):
    M = m

print(M)
print(len(M))
