# №1

x = open('x.txt', 'r')

bufer = []
for i in x:
    bufer.append(i)

print(bufer)
print("\n")
print("В данном файле %s строк" % len(bufer))
