# №2

x = open('x.txt', 'r')

bufer = []
for i in x:
    bufer.append(i)

print(bufer)
print("\n")

n = 0
N = ""
s = []

for i in bufer:
    for j in i:
        if (j >= '0') & (j <= '9'):
            n += 1
            N = N + str(j)
        elif (n != 0) & (N != ""):
            s.append((n,N))
            n = 0
            N = ""
        else:
            n = 0
            N = ""

print(s)

S = 0
for i in s:
    S += i[0]

print("\n")    
print("Средняя длина числа в данном тексте равна %s" % (S/len(s)))
