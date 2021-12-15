# B. Дейкстра: восстановление пути

N, S, F = map(int, input().split())
S -= 1
F -= 1

cost = []
for i in range(N):
    cost.append(list(map(int, input().split())))

INFINITY = 10 ** 10
dist = [INFINITY] * N
dist[S] = 0
valued = [False] * N

path = []

while True:
    min_dist = INFINITY
    no_path = False
    for i in range(N):
        if cost[i] == -1:
            no_path = True
            continue
        if not valued[i] and dist[i] < min_dist:
            min_dist = dist[i]
            node = i
    if no_path:
        continue
    if min_dist == INFINITY:
         break
    i = node
    valued[i] = True
    for j in range(N):
        if dist[i] + cost[i][j] < dist[j] and cost[i][j] != -1:
            dist[j] = dist[i] + cost[i][j]
    path.append(i+1)

if dist[F] != INFINITY:
    print(*path[:path.index(F+1)+1], sep = ' ')
else:
    print(-1)
