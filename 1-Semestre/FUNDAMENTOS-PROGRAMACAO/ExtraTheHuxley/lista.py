quantidade = int(input())
lista = input()
lista = lista.split()

menor = int(lista[0])
posicao = 0

for i in range(quantidade):
    lista[i] = int(lista[i])
    if lista[i] < menor:
        menor = lista[i]
        posicao = i

posicao = lista.index(menor)
print("Menor valor:", menor)
print("Posicao:", posicao)