# Решение квадратного уравнения

import math

a , b , c = map(int, input().split())

if a == 0:
    if b != 0:
        print(-c / b)
    if b == 0 and c == 0:
        print('Infinite number of solutions (x is from R)')
else:
    D = b**2 - 4*a*c
    if D == 0:
        x = -b / (2*a)
        print(x)
    elif D > 0:
        x1 = (-b - math.sqrt(D)) / (2*a)
        x2 = (-b + math.sqrt(D)) / (2*a)
        if x1 < x2:
            print(x1, x2)
        else:
            print(x2, x1)
    else:
        print('No solutions (x is not from R)')
