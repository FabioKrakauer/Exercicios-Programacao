programa
{
	
	funcao inicio()
	{
		inteiro R, G, B
		cadeia cor

		escreva("Digite o valor de R\n")
		leia(R)
		escreva("Digite o valor de G\n")
		leia(G)
		escreva("Digite o valor de B\n")
		leia(B)

		se(R == G e G == B e B == 0) {
			cor = "Preto"
		}senao se(R == G e G == B e B == 255) {
			cor = "Branco"
		}senao se(R == G e G == B e 0 < R e R < 255) {
			cor = "Cinza"
		}senao se(R > G e R > B) {
			cor = "Vermelho"
		}senao se(G > R e G > B) {
			cor = "Verde"
		}senao se(B > G e B > R) {
			cor = "Azul"
		}senao se(R == G e R > B) {
			cor = "Amarelo"
		}senao se(R == B e R > G) {
			cor = "Magenta"
		}senao se(G == B e G > R) {
			cor = "Ciano"
		}senao {
			cor = "Não indentificado"
		}

		se(cor != "Não indentificado") {
			escreva("A cor escolhida foi ", cor)
		}senao {
			escreva("Não foi possível determinar uma cor")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 845; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */