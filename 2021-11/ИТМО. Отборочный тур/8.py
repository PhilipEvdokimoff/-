def f(p,x,y):
    p[x][y] = 1
    if x<7 and (not p[x+1][y]):
        return f(p,x+1,y)
    elif y<7 and (not p[x][y+1]):
        return f(p,x,y+1)
    elif x>0 and (not p[x-1][y]):
        return f(p,x-1,y)
    elif y>0 and (not p[x][y-1]):
        return f(p,x,y-1)
    elif p == [[1 for _ in range(8)] for _ in range(8)]:
        return True
    else:
        return False

c = 0

for i in range(8):
    for j in range(8):
        a = [[0,0,0,0,0,0,0,0],[0,1,1,1,1,0,0,0],[0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0],[0,0,0,1,1,1,1,0],[0,0,0,0,0,0,0,0],]
        if (not a[i][j]) and f(a,i,j):
            print((i,j))
            c += 1

print(c)
