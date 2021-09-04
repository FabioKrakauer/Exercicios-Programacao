programa
{
	
	funcao inicio()
	{
		const cadeia NOT_IDENTIFIED = "NOT INDENTIFIED"
		inteiro red, green, blue
		cadeia color

		escreva("Digite o valor de R\n")
		leia(red)
		escreva("Digite o valor de G\n")
		leia(green)
		escreva("Digite o valor de B\n")
		leia(blue)

		se(red == green e green == blue e blue == 0) {
			color = "Preto"
		}senao se(red == green e green == blue e blue == 255) {
			color = "Branco"
		}senao se(red == green e green == blue e 0 < red e red < 255) {
			color = "Cinza"
		}senao se(red > green e red > blue) {
			color = "Vermelho"
		}senao se(green > red e green > blue) {
			color = "Verde"
		}senao se(blue > green e blue > red) {
			color = "Azul"
		}senao se(red == green e red > blue) {
			color = "Amarelo"
		}senao se(red == blue e red > green) {
			color = "Magenta"
		}senao se(green == blue e green > red) {
			color = "Ciano"
		}senao {
			color = NOT_IDENTIFIED
		}

		se(color != NOT_IDENTIFIED) {
			escreva("A cor escolhida foi ", color)
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
 * @POSICAO-CURSOR = 624; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */