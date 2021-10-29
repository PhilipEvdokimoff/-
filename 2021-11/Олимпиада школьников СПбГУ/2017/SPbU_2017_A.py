# Задача A. Эпическая потасовка (Олимпиада школьников СПбГУ)

a1, h1 = list(map(int, input().split()))
a2, h2 = list(map(int, input().split()))

winner = ""

while winner == "":
    h2 = h2 - a1
    if h2 <= 0:
        winner = "Bandergolf Cyberswitch"
    h1 = h1 - a2
    if h1 <= 0:
        winner = "Benadryl Cabbagepatch"

print(winner)
