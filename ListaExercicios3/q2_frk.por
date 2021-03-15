programa
{
	
	funcao inicio()
	{
		inteiro idade
		cadeia categoria
		escreva("Digite a idade do atleta\n")
		leia(idade)

		se(idade >= 5 e idade <= 7) {
			categoria = "Infantil"
		}senao se(idade >= 8 e idade <= 10) {
			categoria = "Juvenil"
		}senao se(idade >= 11 e idade <= 15){
			categoria = "Adolescente"
		}senao se(idade >= 16 e idade <= 30) {
			categoria = "Adulo"
		}senao {
			categoria = "Sênior"
		}
		escreva("A categoria do atleta é ", categoria)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 72; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */