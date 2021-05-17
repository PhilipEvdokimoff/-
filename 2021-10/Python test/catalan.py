# первые 15 чисел Каталана

def fac(n):
    if n == 0:
        return 1
    return fac(n-1) * n
 
def Catalan(n):
    c = fac(2*n) / (fac(n) * fac(n+1))
    return c

x = 1
while (x <= 15):
    print(Catalan(x))
    x += 1
