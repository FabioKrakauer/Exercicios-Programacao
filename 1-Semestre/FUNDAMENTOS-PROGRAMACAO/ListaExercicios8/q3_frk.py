END_PROGRAM = 'FIM'
forbidden_word = input().upper().split()
textForbiddenWords = dict()

phrase = input()
while phrase != END_PROGRAM:
    formated_phrase = phrase.replace('.', '')
    formated_phrase = formated_phrase.replace(',', '')
    formated_phrase = formated_phrase.upper()
    
    phraseWords = formated_phrase.split()
    for word in phraseWords:
        if word in forbidden_word:
            wordCount = textForbiddenWords.get(word, 0) + 1
            textForbiddenWords[word] = wordCount
    phrase = input()

foundForbiddenWords = textForbiddenWords.keys()
foundForbiddenWords = sorted(foundForbiddenWords)
for key in foundForbiddenWords:
    print(key, textForbiddenWords[key])