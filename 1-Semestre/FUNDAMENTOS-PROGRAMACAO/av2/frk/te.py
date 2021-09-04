def devolve_lista_numeros(x, y):
    lista = []
    for i in range(x, y+1):
        lista.append(i)
    return lista



# PROGRAMA PRINCIPAL: nao altere o codigo a partir deste ponto
def programa_principal():
	a = int(input())
	b = int(input())
	resultado = devolve_lista_numeros(a, b)
	print(resultado)
programa_principal()
