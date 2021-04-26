lines = int(input())
letters = dict()

for i in range(lines):
    phrase = input()
    for phraseLetter in phrase:
        letters[phraseLetter] = letters.get(phraseLetter, 0) + 1
        
searchFor = input()
for searchLetter in searchFor:
    if searchLetter in letters:
        print(searchLetter, "=", letters[searchLetter])
    else:
        print(searchLetter, "=", 0)