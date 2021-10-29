# Задача A. В поисках Саске (Технокубок 2021) 

T = int(input())
for i in range(T):
    n = int(input())
    a = list(map(int, input().split()))
    l1 = len(a)//2
    l2 = len(a) - 1
    while l1 > 0:
        print((-1)*a[l2], end = ' ')
        l1, l2 = (l1 - 1), (l2 - 1)
    l3 = (len(a)//2) - 1
    l4 = len(a) - 1
    while l4 >= len(a)//2:
        print(a[l3], end = ' ')
        l3, l4 = (l3 - 1), (l4 - 1)
    print()
