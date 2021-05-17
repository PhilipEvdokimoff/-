#HTML --> Markdown

html = open('html2.html', 'r')
md_ = open('md2.md', 'w')

bufer = []
for i in html:
    bufer.append(i)

print(bufer)

#Основой код

def erase(s):
    s.split()
    for i in s:
        if s[i] == "<":
            
            s[i] = ""
        elif s[i] == ">":
            s[i] = ""

md = ""

n = "text"
for i in range(len(bufer)):
    line = bufer[i]
    if line[0] == "<" and line[1] == "p" and line[2] == ">":
        md = md + bufer[i-1]
    elif line[0] == "<" and line[1] == "h" and line[2] == "2" and line[3] == ">":
        md = md + bufer[i-1] + "-"
    elif line[0] == "<" and line[1] == "h" and line[2] == "1" and line[3] == ">":
        md = md + bufer[i-1] + "="
    else:
        md = md + ""

#html = html + "</html>\n</body>\n"
print("That's your MD file:")
print(md)
md_.write(md)
md_.close()
