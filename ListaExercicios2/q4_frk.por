programa
{
	
	funcao inicio()
	{
		real precoFabrica
		real lucro
		real impostos
		real precoFinal
		
		escreva("Digite o preço de fábrica\n")
		leia(precoFabrica)
		escreva("Qual é o porcentual do lucro do distribuidor?\n")
		leia(lucro)
		escreva("Qual é o porcentual dos impostos?\n")
		leia(impostos)

		lucro = precoFabrica * lucro / 100
		impostos = precoFabrica * impostos / 100
		precoFinal = precoFabrica + lucro + impostos
		
		escreva("\nO distribuidor tera um lucro de ", lucro)
		escreva("\nO governo ficou ", impostos, " mais rico")
		escreva("\nO preço final é de ", precoFinal)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 380; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */