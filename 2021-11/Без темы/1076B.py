# Codeforces 1076B: Вычитание делителя

'''
Рабочий алгоритм за O(n^2)

n = int(input())

d = n
for i in range(2, n+1):
    if n % i == 0:
        d = i
        break

ans = 0
while n != 0:
    n = n - d
    ans += 1

print(ans)
'''

n = int(input())

ans = 0
for i in range (2,n):
    if n % i == 0:
        print(1 + (n - i) // 2)
        exit(0)
print(1)

'''
Задача C

t = int(input())

for i in range(t):
    d = int(input())
    D = d * (d-4)
    if D < 0:
	print("N")
    else:
	D = D**0.5
	print("Y", (d+D) / 2, (d-D) / 2)
'''
