#Входные данные

n = int(input())
s = list(map(int, input().split()))

#Основной код

k = 0
for i in range(len(s)):
    k = k + s[i]

'''def main(s,n):
    l = []
    for i in range((n/2)):
        n1 = n - i
        n2 = i
        l.append((n1,n2))
    
    a = []
    for i in l:
        for j in l:


Алгоритм в общем виде:
Прочитать символ. Если число - умножить на 10 предыдущее и прибавить. Если пробел - записать в список и начать заново

Окамлевский алгорим:
let rec read_nums s i l n = if s[i] >='0' && s[i] <= '9' then read_nums s (i+1) l (n*10 + s[i]) else read_nums s (i+1) (n::l) 0

'''
def read_nums(s,i,l,n):
    if (s[i] >= '0') and (s[i] <= '9'):
        read_nums(s,(i+1),l,(n*10 + s[i]))
    else:
        read_nums(s,(i+1),(n::l),0)
