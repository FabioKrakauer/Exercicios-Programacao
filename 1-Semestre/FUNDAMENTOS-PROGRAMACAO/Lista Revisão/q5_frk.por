programa
{
	
	funcao inicio()
	{
		const inteiro QUESTOES = 80

		cadeia gabarito[QUESTOES]
		cadeia respostas[QUESTOES]

		inteiro acertos = 0

		para(inteiro i = 0; i<QUESTOES; i++) {
			escreva("\nDigite o gabarito da questão ", i + 1, " entre (A e D) ")
			leia(gabarito[i])
		}
		para(inteiro i = 0; i<QUESTOES; i++) {
			escreva("\nDigite sua resposta da questão ", i + 1, " entre (A e D) ")
			leia(respostas[i])

			se(respostas[i] == gabarito[i]) {
				acertos++
			}
		}
		escreva("\nVocê acertou: ", acertos, "/", QUESTOES)
		escreva(gabarito)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 67; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */