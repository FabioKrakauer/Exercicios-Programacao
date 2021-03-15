programa
{
	
	funcao inicio()
	{
		real x, y, z
		escreva("Digite um número\n")
		leia(x)
		escreva("Digite o segundo número\n")
		leia(y)
		escreva("Digite o valor que deseja saber se esta entre o intervalo do primeiro e segundo valor\n")
		leia(z)

		se (x > z e y < z) {
			escreva("O terceiro numero está entre ", x, " e ", y)
		}senao se(y > z e x < z) {
			escreva("O terceiro numero está entre ", y, " e ", x)
		}senao {
			escreva("O terceiro numero não esta entre os numeros digitados")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 499; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */