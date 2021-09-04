forbiddenWordsQuantity = int(input())
words = dict()

for i in range(forbiddenWordsQuantity):
    word = input()
    word_list = word.split()
    wordObject = {
        'word': word_list[0].upper(),
        'weight': float(word_list[1]),
        'countTimes': 0
    }
    words[word_list[0].upper()] = wordObject
threshold = float(input())
text = input()
text = text.replace(".", "")
text = text.replace(",", "")
text = text.upper()
text_words = text.split()

for word in text_words:
    forbiddenWord = words.get(word, None)
    if forbiddenWord != None:
        forbiddenWord["countTimes"] += 1
totalThreshold = 0
orderedKeys = sorted(words.keys())
for word in orderedKeys:
    wordDict = words[word]
    totalThreshold += wordDict["weight"] * wordDict["countTimes"]
    if wordDict["countTimes"] > 0:
        print(word, wordDict["countTimes"])

if totalThreshold > threshold:
    print('SIM')
else:
    print('NAO')


