MIN_MAGIC_NUMBER = 6
ACCEPTED_PASSOWRD = 'S'

def replaceWord(word):
    wordFormat = word
    wordFormat = wordFormat.replace("a", "@")
    wordFormat = wordFormat.replace("E", "%")
    wordFormat = wordFormat.replace("e", "!")
    wordFormat = wordFormat.replace("i", "@")
    wordFormat = wordFormat.replace("o", "#")
    wordFormat = wordFormat.replace("u", "$")
    return wordFormat
def formatMusic(text):
    formatted_music = ""
    for word in text.split():
        word = word.title()
        formatted_music += replaceWord(word)
    return formatted_music

def generatePassword(music_formatted, magic_number, generatedPassword):
    password = music_formatted[generatedPassword:generatedPassword + 5]
    password += music_formatted[len(music_formatted) - 5:len(music_formatted)]
    password += music_formatted[magic_number: magic_number + 5]
    return password[::-1]

music = input()
music_formatted = formatMusic(music)
passwords_quantity = int(input())
passowords = dict()
generatedPasswords = 0

while passwords_quantity != generatedPasswords:
    magic_number = int(input())
    while magic_number < MIN_MAGIC_NUMBER or magic_number > len(music):
        magic_number = int(input())
    password = generatePassword(music_formatted, magic_number, generatedPasswords)
    print(password)
    accept = input().upper()
    if accept == ACCEPTED_PASSOWRD:
        user = input()
        passowords[user] = password
        generatedPasswords += 1
print(passowords)