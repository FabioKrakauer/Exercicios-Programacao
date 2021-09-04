convidados = 1
minutos = int(input())
for n in range(minutos):
    convidados *= 2

convidados = str(convidados)
if(len(convidados) <= 50):
    print(convidados)
else:
    divisao = len(convidados) / 50
    lastIndex = 0
    for bloco in range(int(divisao) + 1):
        print(convidados[lastIndex:lastIndex+50])
        lastIndex += 50
