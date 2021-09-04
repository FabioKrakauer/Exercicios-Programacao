quant_palavras = int(input())
palavras_proibidas = dict()

for i in range(quant_palavras):
    palavras_atencao_pesos = input()
    palavras_atencao_pesos = palavras_atencao_pesos.upper()
    atencao_pesos = palavras_atencao_pesos.split()
    p_proibida = str(atencao_pesos[0])
    peso = float(atencao_pesos[1])
    palavra_proibida = dict()
    palavra_proibida["peso"] = peso
    palavra_proibida["vezes"] = 0
    palavras_proibidas[p_proibida] = palavra_proibida

threshold = float(input())
linhas = input()
linhas = linhas.replace(".", "")
linhas = linhas.replace(",", "")
linhas = linhas.upper()
palavras = linhas.split()

for palavra in palavras:
    palavra_existe = palavras_proibidas.get(palavra, None)
    if palavra_existe != None:
        palavras_proibidas[palavra]["vezes"] += 1

valor_threshold = 0
for palavra, objeto in palavras_proibidas.items():
    valor_threshold += objeto["peso"] * objeto["vezes"]
    if objeto["vezes"] > 0:
        print(palavra, objeto["vezes"])

if valor_threshold > threshold:
    print('SIM')
else:
    print('NAO')