from unidecode import unidecode
palavras = dict()
text = input().replace('.', '').replace(',', '').replace('!','').replace('?', '')

for word in text.split():
    palavras[unidecode(word.lower())] = palavras.get(unidecode(word.lower()), 0) + 1

listPalavras = []
for key,value in palavras.items():
    if value > 1:
        listPalavras.append(key)
print(" ".join(listPalavras))