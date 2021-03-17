n = int(input())
s1 = input()
s2 = input()

def check(n,c):
    if n >= 0:
        if s1[n] == s2[n]:
            return check((n-1),("0" + c))
        else:
            return check((n-1),("1" + c))
    else:
        return c

print(check((n-1),""))
