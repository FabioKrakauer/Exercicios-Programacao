programa
{
	
	funcao inicio()
	{
		const inteiro VERAO = 1
		const inteiro OUTONO = 2
		const inteiro INVERNO = 3
		const inteiro PRIMAVERA = 4
		const cadeia INVALIDO = "inválido"

		inteiro codigoEstacao
		cadeia estacao = ""
		
		escreva("Digite o número da estação: ")
		leia(codigoEstacao)

		escolha(codigoEstacao) {
			caso VERAO:
				estacao = "VERAO"
				pare
			caso OUTONO:
				estacao = "Outono"
				pare
			caso INVERNO:
				estacao = "Inverno"
				pare
			caso PRIMAVERA:
				estacao = "Primavera"
				pare
			caso contrario:
				estacao = INVALIDO
				pare
		}

		se(estacao != INVALIDO) {
			escreva("\nA estação escolhida foi ", estacao, " aproveite!")
		}senao {
			escreva("\nVocê escolheu uma opção inválida! Tente novamente mais tarde")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 421; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */