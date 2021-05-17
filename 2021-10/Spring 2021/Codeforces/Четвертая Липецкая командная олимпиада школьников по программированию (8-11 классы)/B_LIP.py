#Входные данные

n, m = list(map(int, input().split()))
s = input()

limits = []
for k in range(m):
    limits.append(int(input()))


#Основной код
    
mode = "not_read_1"
temp_1 = 0
max_1 = 0

for i in s:
    if mode == "read_1":
        if i == "1":
            temp_1 += 1
        else:
            mode = "not_read_1"
            if temp_1 > max_1:
                max_1 = temp_1
    elif mode == "not_read_1":
        if i == "1":
            mode = "read_1"
            temp_1 = 1
        else:
            pass

for k in limits:
    if max_1 < k:
        print("YES")
    else:
        print("NO")
