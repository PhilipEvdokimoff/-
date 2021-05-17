#Входные данные

n = int(input())

iQ = []
for s in range(n):
    iQ.append(int(float(input())*1000000))

iQ.sort()
print(iQ)

#Основной код

def find_iq(a,b):
    if a<b:
        if b-a == 1:
            return int(b-a)/1000000
        elif b-a > 1:
            return find_iq((a+b)/2,b)
        else:
            pass
    if a>b:
        if a-b == 1:
            return int(a-b)/1000000
        elif a-b > 1:
            return find_iq((a+b)/2,a)
        else:
            pass
    else:
        return a

print(find_iq(100.000041,100.000043))

iq = []
for i in iQ:
    iq.append(find_iq(i,i+1))

print(iq)
