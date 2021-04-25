programa
{
	
	funcao inicio()
	{
		//Tive que definir os valores dos pesos como reais por que o portugol trunca a variável caso eu divida um inteiro por real
		const real PESO_QUEIJO = 50.0
		const real PESO_PRESUNTO = 50.0
		const real PESO_CARNE = 100.0

		inteiro sanduiches
		real pesoTotalQueijos
		real pesoTotalPresuntos
		real pesoTotalCarne

		
		escreva("Digite o número de sanduíches que irá produzir: ")
		leia(sanduiches)

		//Multiplica o valor do queijo por 2 visto que são 2 fatias de queijo
		pesoTotalQueijos = transformarGramaParaKilo(sanduiches * (2 * PESO_QUEIJO))
		pesoTotalPresuntos = transformarGramaParaKilo(sanduiches * PESO_PRESUNTO)
		pesoTotalCarne = transformarGramaParaKilo(sanduiches * PESO_CARNE)

		

		escreva("\nVocê precisara de: ")
		escreva("\n", pesoTotalQueijos, " kg de Queijo")
		escreva("\n", pesoTotalPresuntos, " kg de Presunto")
		escreva("\n", pesoTotalCarne, " kg de Carne")
		
	}

	funcao real transformarGramaParaKilo(real valorEmGrama) {
		retorne valorEmGrama / 1000
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 261; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */