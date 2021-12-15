# A. Дейкстра

N, S, F = map(int, input().split())
S -= 1
F -= 1

cost = []
for i in range(N):
    cost.append(list(map(int, input().split())))
print(cost)

INFINITY = 10 ** 10
dist = [INFINITY] * N
dist[S] = 0
valued = [False] * N

while True:
    min_dist = INFINITY
    for i in range(N):
        if not valued[i] and dist[i] < min_dist:
            min_dist = dist[i]
            min_apex = i
    if min_dist == INFINITY:
         break
    i = min_apex
    valued[i] = True
    for j in range(N):
        if dist[i] + cost[i][j] < dist[j] and cost[i][j] != -1:
            dist[j] = dist[i] + cost[i][j]

if dist[F] != INFINITY:
    print(dist[F])
else:
    print(-1)
