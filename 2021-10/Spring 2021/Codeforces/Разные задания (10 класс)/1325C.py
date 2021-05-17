# Codeforces 1325C: Ехаб и неПутевые МЕХы

n = int(input())
tree = []
for i in range(n):
    a, b = list(map(int, input().split()))
    tree.append((a,b))
print(tree)
