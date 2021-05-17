#Входные данные

n, m = list(map(int, input().split()))
a = input()

values = []
for c in range(m):
    values.append(list(map(list, input().split())))
#print(values)
'''
3 2
a-b
a 2 3
b -5 5

19 3
y+((y+z)+(y-x))+(z)
x 0 7
y 0 8
z 0 9
'''

#Основной код

pos = 0

def parse_e (pos):
    s = parse_s(pos)
    while s[pos] == '+' or s[pos] == '-':
        op = s[pos]
        pos += 1
        s.append(parse_s(pos))
    #while 

def parse_s(pos):
    if s[pos] == '(':
        pos += 1
        x = parse_e(pos)
        if s[pos] != ")":
            print("Did you mean ')'?")
        pos += 1
        return (x,pos)
    if s[pos] >='a' and s[pos] <= 'z':
        return (s[pos], 1)
    if s[pos] >='0' and s[pos] <= '9':
        return (int(s[pos]), 1)
    print("Error parsing expression")
    return []
