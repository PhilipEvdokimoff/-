# таблица умножения n*m

n, m = list(map(int, input().split()))

def mult_table(n,m):
    table = ''
    for y in range(1,n+1):
        for x in range(1,m+1):
            table += f'{x*y}\t'
        table += f'\n'
    return table

print(mult_table(n,m))
