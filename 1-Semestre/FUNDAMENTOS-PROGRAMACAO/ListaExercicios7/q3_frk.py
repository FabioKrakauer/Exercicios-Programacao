import re
LEAVE_REGEX = 'SAIR|FIM'
text = input()

while not re.search(LEAVE_REGEX, text):
    newText = text
    newText = newText.replace('3', 'E')
    newText = newText.replace('4', 'A')
    newText = newText.replace('1', 'I')
    newText = newText.replace('5', 'S')
    newText = newText.upper()

    if re.search(LEAVE_REGEX, newText):
        text = newText
    else:
        print(newText)
        text = input()
    