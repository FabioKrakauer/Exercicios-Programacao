lines = int(input())
letters = list()

for i in range(lines):
    phrase = input()
    for phraseLetter in phrase:
        if phraseLetter in letters:
            letters[phraseLetter] += 1
        else:
            letters[phraseLetter] = 1

searchFor = input()
for searchLetter in searchFor:
    if searchLetter in letters:
        print(searchLetter, "=", letters[searchLetter])
    else:
        print(searchLetter, "=", 0)