#разбиения числа (честные)

n = int(input())
print("Number: %s" % n)

def f(n,m):
    if (n > 1) and (m == 0):
        return 1
    elif m != 0:
        return (f(m,m-1) + f(n,m-1))
    else:
        return 1

print("\nCount of partitions: ")
print(f(n,n-1))
#print("\n\n")
