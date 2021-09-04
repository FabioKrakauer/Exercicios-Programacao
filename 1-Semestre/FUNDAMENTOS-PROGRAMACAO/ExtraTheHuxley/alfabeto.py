alfabeto = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
letra1 = input().lower()
inSequence = True
letras = [letra1]
for i in range(4):
    letras.append(input().lower())
letras = sorted(letras)
index = letras.index(letras[0])
correctSequence = alfabeto[index:index+5]
if letras == correctSequence:
    print('sim')
else:
    print('nao')