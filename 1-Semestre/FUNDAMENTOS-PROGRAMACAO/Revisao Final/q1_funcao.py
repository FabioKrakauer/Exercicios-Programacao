quantidade_palavras = int(input())

palavras_proibidas = list()
peso_palavra = dict()

def ePalavraProibida(palavra):
    if palavra in palavras_proibidas:
        return True
    else:
        return False

for palavra_id in range(quantidade_palavras):
    palavra_peso = input()
    palavra_peso_lista = palavra_peso.split()
    palavra = palavra_peso_lista[0].upper()
    peso = float(palavra_peso_lista[1])

    palavra_dict = {
        "peso": peso,
        "quantidade": 0
    }
    peso_palavra[palavra] = palavra_dict
    palavras_proibidas.append(palavra)

maximo_threshold = float(input())
threshold = 0

texto = input()
texto_limpo = texto.replace(",", "")
texto_limpo = texto_limpo.replace(".", "")
texto_limpo = texto_limpo.upper()

texto_palavras = texto_limpo.split()
for palavra in texto_palavras:
    if ePalavraProibida(palavra):
        peso_palavra[palavra]["quantidade"] += 1

for palavra, valor in peso_palavra.items():
    if valor["quantidade"] > 0:
        threshold += (valor["peso"] * valor["quantidade"])
        print(palavra, valor["quantidade"])

if threshold > maximo_threshold:
    print("SIM")
else:
    print("NAO")
