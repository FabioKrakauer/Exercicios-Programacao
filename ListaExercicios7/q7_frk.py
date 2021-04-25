LEAVE = '*'
EXCEPTIONS = ("da", "de", "di", "do", "du", "e")

phrase = input()
while phrase != LEAVE:
    formattedPhrase = ""
    splitedPhrase = phrase.split()
    for word in splitedPhrase:
        if not word.lower() in EXCEPTIONS:
            if formattedPhrase == "":
                formattedPhrase += word.title()
            else:
                formattedPhrase += " " + word.title()
        else:
            formattedPhrase += " " + word.lower()
    print(formattedPhrase)
    phrase = input()