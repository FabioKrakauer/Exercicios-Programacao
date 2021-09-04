programa
{
	
	funcao inicio()
	{
		const inteiro MUNICIPIOS = 5570

		//Define uma matriz como dados dos Municípios
		//Onde o indice 0 é a quantidade de veiculos
		//1 Vitimas fatais
		//2 Vitimas Nao fatais
		//3 Sem vitimas
		inteiro dadosMunicipios[MUNICIPIOS][4]
		cadeia nomesMunicipios[MUNICIPIOS]

		inteiro quantidadeVeiculos = 0
		inteiro quantidadeAcidentes = 0
		inteiro quantidadeAcidentesVitimasFatais = 0

		inteiro maiorNumeroAcidentes = 0
		cadeia municipioMaiorNumeroAcidentes

		inteiro menorNumeroAcidentes = 0
		cadeia municipioMenorNumeroAcidentes
		
		para(inteiro i = 0; i < MUNICIPIOS; i++) {
			escreva("\nDigite o nome do município: ")
			leia(nomesMunicipios[i])

			escreva("\nDigite a quantidade de veículos do município: ")
			leia(dadosMunicipios[i][0])
			escreva("\nDigite o total de acidentes com vítimas fatais no transito: ")
			leia(dadosMunicipios[i][1])
			escreva("\nDigite o total de acidentes com vítimas NÃO fatais no transito:  ")
			leia(dadosMunicipios[i][2])
			escreva("\nDigite o total de acidentes sem vítimas no transito: ")
			leia(dadosMunicipios[i][3])
		}

		maiorNumeroAcidentes = dadosMunicipios[0][0]
		municipioMaiorNumeroAcidentes = nomesMunicipios[0]

		menorNumeroAcidentes = dadosMunicipios[0][0]
		municipioMenorNumeroAcidentes = nomesMunicipios[0]
		
		para(inteiro i = 0; i < MUNICIPIOS; i++) {

			inteiro veiculos = dadosMunicipios[i][0]
			inteiro acidentes = dadosMunicipios[i][1] + dadosMunicipios[i][2] + dadosMunicipios[i][3]
			inteiro vitimasFatais = dadosMunicipios[i][1]
			
			quantidadeVeiculos += veiculos
			quantidadeAcidentes += acidentes
			quantidadeAcidentesVitimasFatais += vitimasFatais

			se(acidentes > maiorNumeroAcidentes) {
				maiorNumeroAcidentes = acidentes
				municipioMaiorNumeroAcidentes = nomesMunicipios[i]
			}

			se(acidentes < menorNumeroAcidentes) {
				menorNumeroAcidentes = acidentes
				municipioMenorNumeroAcidentes = nomesMunicipios[i]
			}
		}

		escreva("\nA quantidade de veículos no pais é de: ", quantidadeVeiculos)
		escreva("\nA quantidade de acidentes no pais é de: ", quantidadeAcidentes)
		escreva("\nA quantidade de acidentes com vitimas fatais é de: ", quantidadeAcidentesVitimasFatais)
		escreva("\nO município com maior numero de acidentes é ", municipioMaiorNumeroAcidentes)
		escreva("\nO município com menor numero de acidentes é ", municipioMenorNumeroAcidentes)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 70; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */