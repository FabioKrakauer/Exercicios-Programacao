EXCLUDE_CHARS = [" ", ".", ",", "!", "?"]
phraseOne = input()
phraseTwo = input()

lettersOne = list()
lettersTwo = list()
for letter in phraseOne:
    if letter not in EXCLUDE_CHARS:
        lettersOne.append(letter.lower())
for letter in phraseTwo:
    if letter not in EXCLUDE_CHARS:
        lettersTwo.append(letter.lower())

lettersOne.sort()
lettersTwo.sort()
print(lettersOne == lettersTwo)