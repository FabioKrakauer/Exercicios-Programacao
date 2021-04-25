programa
{
	
	funcao inicio()
	{
		inteiro saldo
		inteiro saldo_restante
		
		inteiro notas_200 = 0
		inteiro notas_100 = 0
		inteiro notas_50 = 0
		inteiro notas_20 = 0
		inteiro notas_10 = 0
		inteiro notas_5 = 0
		inteiro notas_2 = 0
		inteiro notas_1 = 0

		escreva("\nDigite o valor a ser sacado: ")
		leia(saldo)

		saldo_restante = saldo
		se(saldo_restante >= 200) {
			notas_200 = saldo_restante / 200
			saldo_restante = saldo_restante % 200
		}
		se(saldo_restante >= 100) {
			notas_100 += saldo_restante / 100
			saldo_restante = saldo_restante % 100
		}

		se(saldo_restante >= 50) {
			notas_50 += saldo_restante / 50
			saldo_restante = saldo_restante % 50
		}

		se(saldo_restante >= 20) {
			notas_20 += saldo_restante / 20
			saldo_restante = saldo_restante % 20
		}

		se(saldo_restante >= 10) {
			notas_10 += saldo_restante / 10
			saldo_restante = saldo_restante % 10
		}

		se(saldo_restante >= 5) {
			notas_5 += saldo_restante / 5
			saldo_restante = saldo_restante % 5
		}
		
		se(saldo_restante >= 2) {
			notas_2 += saldo_restante / 2
			saldo_restante = saldo_restante % 2
		}
		
		se(saldo_restante >= 1) {
			notas_1 += saldo_restante / 1
			saldo_restante = saldo_restante % 1
		}

		escreva("\nA contagem de notas para R$", saldo, " é de:")
		escreva("\nR$200=", notas_200)
		escreva("\nR$100=", notas_100)
		escreva("\nR$50=", notas_50)
		escreva("\nR$20=", notas_20)
		escreva("\nR$10=", notas_10)
		escreva("\nR$5=", notas_5)
		escreva("\nR$2=", notas_2)
		escreva("\nR$1=", notas_1)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 193; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */