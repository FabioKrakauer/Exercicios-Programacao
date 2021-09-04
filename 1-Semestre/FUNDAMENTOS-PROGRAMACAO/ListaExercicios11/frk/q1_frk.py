def constructTable(columns, lines):
    table = dict()
    for column in range(columns):
        column += 1
        linesInColumn = []
        linesInColumn.append(column)
        actualLineValue = column
        for line in range(lines - 1):
            line += 1
            actualLineValue += columns
            linesInColumn.append(actualLineValue)
        table[column] = linesInColumn
    return table

def isOdd(number):
    return not number % 2 == 0

def getLedsByColumn(table, column, color):
    leds = []
    if color == 'R':
        leds = table[column]
    elif color == 'B':
        for led in table[column]:
            if isOdd(led):
                leds.append(led)
    elif color == 'G':
        for led in table[column]:
            if not isOdd(led):
                leds.append(led)
    return leds


tableSize = input().split()
table = constructTable(int(tableSize[0]), int(tableSize[1]))

for test in range(3):
    column = int(input())
    color = input()
    leds = getLedsByColumn(table, column, color)
    for led in leds:
        print(led)
    
    print()