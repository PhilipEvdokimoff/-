#Входные данные

n = int(input())

cities = []
for s in range(n):
    cities.append(input())
#print(cities)

#Основной код

alphabet = []

for i in cities:
    for j in i:
        if j not in alphabet:
            alphabet.append(j)
            
print(alphabet)
