sequence = input()
searchLetter = input()

letterOcurrences = 0

lastLetter = ""
letterIsInSequence = False
currentSequence = 0
sequenceList = list()

checkedLettersQuantity = 0
for sequenceLetter in sequence:
    checkedLettersQuantity += 1
    if sequenceLetter == searchLetter:
        letterOcurrences += 1
        letterIsInSequence = True
        if sequenceLetter == lastLetter:
            currentSequence += 1
        else:
            currentSequence = 1
        
        if(checkedLettersQuantity == len(sequence)):
            letterIsInSequence = False
            sequenceList.append(currentSequence)
            currentSequence = 0
    else:
        if letterIsInSequence == True:
            letterIsInSequence = False
            sequenceList.append(currentSequence)
            currentSequence = 0

        letterIsInSequence = False
        
    lastLetter = sequenceLetter

if letterOcurrences > 0:

    maxSequence = max(sequenceList)
    findInSequence = ""
    for quantity in range(maxSequence):
        findInSequence += searchLetter

    sequenceLocation = sequence.find(findInSequence)
    print(sequenceLocation)
    print(maxSequence)
else:
    print("ERRO")