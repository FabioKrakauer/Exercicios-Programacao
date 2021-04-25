programa
{
	
	funcao inicio()
	{
		const inteiro NUM_LIVROS = 10000
		//CRIA VARIAVEL ANO ATUAL DEFINIDO COMO 2021
		const inteiro ANO_ATUAL = 2021
		inteiro quant_antigos, soma_ano, i, ano, quant_emprestados
		real media_anual
		caracter emprestado

		soma_ano = 0
		quant_antigos = 0
		i = 0
		quant_emprestados = 0

		//RETIRA = DA QUANTIDADE DE LIVROS JÁ QUE A VARIAVEL i COMECA EM 0
		enquanto(i < NUM_LIVROS) {
			escreva("Informe o ano de lançamento do livro: ")
			leia(ano)
			// Altera soma do ano para acumular os anos
			soma_ano += ano

			//adiciona parenteses subtração da quantidade de anos, assim ele ira executar primeiro a subtração entre ANO_ATUAL - 10 para depois verificar.
			se(ano <= (ANO_ATUAL - 10)) {
				//Adiciona um a quantidade de livros atuais, ao inves de dobrar a quantidade atual
				quant_antigos += 1
			}

			escreva("Este livro está emprestado? S - Sim ou N - Não ")
			leia(emprestado)

			se(emprestado == 'S') {
				quant_emprestados += 1
			}
			
			i++
		}
			//Adiciona \n para quebra de linha e melhor visualização
			escreva("\nQuantidade de livros antigos: ", quant_antigos)
			escreva("\nQuanditdade de livros emprestados: ", quant_emprestados)
			media_anual = soma_ano / i
			escreva("\nA média de data de lançamentos de livros é: ", media_anual)
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