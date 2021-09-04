def isOdd(number):
    return not number % 2 == 0

ordem_chegada = dict()

for chegada in range(5):
    nome = input().capitalize()
    ordem_chegada[nome] = chegada + 1

posicoes = dict()

for key, value in ordem_chegada.items():
    posicoes[value] = key


if isOdd(ordem_chegada["Luigi"]) and isOdd(ordem_chegada["Yoshi"]):
    posicoes[3] = "Luigi"
    posicoes[5] = "Yoshi"
elif not isOdd(ordem_chegada["Luigi"]) and not isOdd(ordem_chegada["Yoshi"]):
    posicoes[2] = "Luigi"
    posicoes[4] = "Yoshi"

if not isOdd(ordem_chegada["Toad"]) and not isOdd(ordem_chegada["Mario"]):
    posicoes[4] = "Toad"
elif not isOdd(ordem_chegada["Toad"]) and isOdd(ordem_chegada["Mario"]):
    posicoes[ordem_chegada["Toad"]] = posicoes[2]
    posicoes[2] = "Toad"
elif isOdd(ordem_chegada["Toad"]) and not isOdd(ordem_chegada["Mario"]):
    posicoes[ordem_chegada["Toad"]] = posicoes[3]
    posicoes[3] = "Toad"
else:
    posicoes[ordem_chegada["Toad"]] = posicoes[5]
    posicoes[5] = "Toad"

if not isOdd(ordem_chegada["Mario"]):
    posicoes[ordem_chegada["Mario"]] = posicoes[2]
    posicoes[2] = "Mario"
else:
    posicoes[ordem_chegada["Mario"]] = posicoes[3]
    posicoes[3] = "Mario"

posicoes[1] = "Princesa"

for i in range(5):
    i += 1
    print(posicoes[i])