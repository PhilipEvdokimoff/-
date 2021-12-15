# Codeforces 229B: Планеты

from heapq import *
 
n, m = map(int, input().split())

planets = []
for i in range(n+1):
    planets.append([])

for i in range(m):
    a, b, c = map(int, input().split())
    planets[a].append((b,c))
    planets[b].append((a,c))

times = [[]]
for i in range(n):
    times.append(list(map(int, input().split()))[1:])
 
INFINITY = 10 ** 10
dist = [INFINITY] * (n+1)
dist[1] = 0
q = [(0,1)]

# здесь не очень понятно 
while q:
    d, x = heappop(q)
    if d != dist[x]:
        continue
    current = dist[x]
    for i in times[x]:
        if i == current:
            current += 1
    for y, cost in planets[x]:
        if dist[y] > dist[x] + cost:
            dist[y] = min(dist[y], current + cost)
            heappush(q,(dist[y], y))
            
if dist[n] != INFINITY:
    print(dist[n])
else:
    print(-1)
