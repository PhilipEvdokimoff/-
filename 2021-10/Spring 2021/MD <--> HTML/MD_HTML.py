#Markdown --> HTML

md = open('md.md', 'r')
html_ = open('html.html', 'w')

bufer = []
for i in md:
    bufer.append(i)

print(bufer)

#Основой код

html = "<html>\n<body>\n"

n = "text"
for i in range(len(bufer)):
    line = bufer[i]
    '''if n == "text":
        if line[0] == " ":
            n = "text"
            html = html + "<p>" + bufer[i-1] + "</p>\n"
        elif line[0] == "-":
            n = "BOLD text"
            html = html + "<h2>" + bufer[i-1] + "</h2>\n"
        elif line[0] == "=":
            n = "BOLD text"
            html = html + "<h1>" + bufer[i-1] + "</h1>\n"
        elif line[0] !=
    elif n == "BOLD text":
        if line[0] == " ":
            n = "text"
            html = html + "<p>" + bufer[i-1] + "</p>\n"
        elif line[0] == "-":
            n = "BOLD text"
            html = html + "<h2>" + bufer[i-1] + "</h2>\n"
        elif line[0] == "=":
            n = "BOLD text"
            html = html + "<h1>" + bufer[i-1] + "</h1>\n"
    else:
        print(n)
        print("Каким образом???")
        break'''
'''
    if line[0] == " ":
        n = "text"
        html = html + "<p>" + bufer[i-1] + "</p>\n"
    elif line[0] == "-":
        n = "BOLD text"
        html = html + "<h2>" + bufer[i-1] + "</h2>\n"
    elif line[0] == "=":
        n = "BOLD text"
        html = html + "<h1>" + bufer[i-1] + "</h1>\n"
    elif n == "BOLD text":
        pass
    else:
        n = n = "text"
        html = html + "<p>" + bufer[i] + "</p>\n"
'''
    if line[0] == " ":
        html = html + "<p>" + bufer[i-1] + "</p>\n"
    elif line[0] == "-":
        html = html + "<h2>" + bufer[i-1] + "</h2>\n"
    elif line[0] == "=":
        html = html + "<h1>" + bufer[i-1] + "</h1>\n"
    else:
        html = html + "<p>" + bufer[i] + "</p>\n"

html = html + "</html>\n</body>\n"
print(html)
html_.write(html)
html_.close()
