programa
{
	
	funcao inicio()
	{
		const inteiro MUNICIPIOS_PAIS = 5570

		const caracter CONTINUAR = 'S'

		//Define uma matriz como dados dos Municípios
		//Onde o indice 0 é a quantidade de veiculos
		//1 Vitimas fatais
		//2 Vitimas Nao fatais
		//3 Sem vitimas
		//4 IVT
		
		real dadosMunicipios[MUNICIPIOS_PAIS][5]
		cadeia nomesMunicipios[MUNICIPIOS_PAIS]

		inteiro municipios = 0

		inteiro quantidadeVeiculos = 0
		inteiro quantidadeAcidentes = 0
		inteiro quantidadeAcidentesVitimasFatais = 0
		inteiro quantidadeAcidentesVitimasNaoFatais = 0
		inteiro quantidadeAcidentesSemVitimas = 0

		real mediaVeiculos = 0.0
		real mediaAcidentesFatais = 0.0
		real mediaAcidentesNaoFatais = 0.0
		real mediaAcidentesSemVitimas = 0.0

		real maiorIVT = 0
		inteiro idMunicipioMaiorIVT

		real menorIVT = 0
		inteiro idMunicipioMenorIVT

		caracter continuaLendo = CONTINUAR
		enquanto(continuaLendo == CONTINUAR) {
			se(municipios != 0) {
				escreva("\nVocê deseja inserir mais um municipio? (S ou N) ")
				leia(continuaLendo)
			}

			se(continuaLendo == CONTINUAR) {
				escreva("\nDigite o nome do município: ")
				leia(nomesMunicipios[municipios])

				escreva("\nDigite a quantidade de veículos do município: ")
				leia(dadosMunicipios[municipios][0])
				escreva("\nDigite o total de acidentes com vítimas fatais no transito: ")
				leia(dadosMunicipios[municipios][1])
				escreva("\nDigite o total de acidentes com vítimas NÃO fatais no transito:  ")
				leia(dadosMunicipios[municipios][2])
				escreva("\nDigite o total de acidentes sem vítimas no transito: ")
				leia(dadosMunicipios[municipios][3])

				se(dadosMunicipios[municipios][0] == 0) {
					dadosMunicipios[municipios][4] = 0.0
				}senao {
					dadosMunicipios[municipios][4] = (5* dadosMunicipios[municipios][1] + 3 * dadosMunicipios[municipios][2] + 1 * dadosMunicipios[municipios][3]) / dadosMunicipios[municipios][0]
				}
				escreva("IVT ", dadosMunicipios[municipios][4])
				municipios++
			}
		}
		
		maiorIVT = dadosMunicipios[0][4]
		idMunicipioMaiorIVT = 0

		menorIVT = dadosMunicipios[0][4]
		idMunicipioMenorIVT = 0

		
		para(inteiro i = 0; i < municipios; i++) {

			real veiculos = dadosMunicipios[i][0]
			real acidentes = dadosMunicipios[i][1] + dadosMunicipios[i][2] + dadosMunicipios[i][3]
			real vitimasFatais = dadosMunicipios[i][1]
			real vitimasNaoFatais = dadosMunicipios[i][2]
			real semVitimas = dadosMunicipios[i][3]
			real ivt = dadosMunicipios[i][4]
			
			quantidadeVeiculos += veiculos
			quantidadeAcidentes += acidentes
			quantidadeAcidentesVitimasFatais += vitimasFatais
			quantidadeAcidentesVitimasNaoFatais += vitimasNaoFatais
			quantidadeAcidentesSemVitimas += semVitimas

			se(ivt > maiorIVT) {
				maiorIVT = ivt
				idMunicipioMaiorIVT = i
			}

			se(ivt < menorIVT) {
				menorIVT = ivt
				idMunicipioMenorIVT = i
			}
		}

		mediaVeiculos = quantidadeVeiculos / municipios
		mediaAcidentesFatais = quantidadeAcidentesVitimasFatais / municipios
		mediaAcidentesNaoFatais = quantidadeAcidentesVitimasNaoFatais / municipios
		mediaAcidentesSemVitimas = quantidadeAcidentesSemVitimas / municipios
		
		escreva("\nA media de veículos é de: ", mediaVeiculos)
		escreva("\nA media de acidentes fatais é de: ", mediaAcidentesFatais)
		escreva("\nA media de acidentes não fatais é de: ", mediaAcidentesNaoFatais)
		escreva("\nA media de acidentes sem vitimas é de: ", mediaAcidentesSemVitimas)

		escreva("\nO maior IVT é de ", maiorIVT, " e pertence a cidade ", nomesMunicipios[idMunicipioMaiorIVT])
		escreva("\nO menor IVT é de ", menorIVT, " e pertence a cidade ", nomesMunicipios[idMunicipioMenorIVT])

		escreva("\nOs dados do municipio de maior IVT são: ")
		escreva("\n  Nome: ", nomesMunicipios[idMunicipioMaiorIVT])
		escreva("\n  Quantidade de veículos: ", dadosMunicipios[idMunicipioMaiorIVT][0])
		escreva("\n  Quantidade de acidentes com vitimas fatais: ", dadosMunicipios[idMunicipioMaiorIVT][1])
		escreva("\n  Quantidade de acidentes com vitimas nao fatais: ", dadosMunicipios[idMunicipioMaiorIVT][2])
		escreva("\n  Quantidade de acidentes sem vitimas: ", dadosMunicipios[idMunicipioMaiorIVT][3])
		escreva("\n  IVT: ", dadosMunicipios[idMunicipioMaiorIVT][4])

		
		escreva("\nOs dados do municipio de menor IVT são: ")
		escreva("\n  Nome: ", nomesMunicipios[idMunicipioMenorIVT])
		escreva("\n  Quantidade de veículos: ", dadosMunicipios[idMunicipioMenorIVT][0])
		escreva("\n  Quantidade de acidentes com vitimas fatais: ", dadosMunicipios[idMunicipioMenorIVT][1])
		escreva("\n  Quantidade de acidentes com vitimas nao fatais: ", dadosMunicipios[idMunicipioMenorIVT][2])
		escreva("\n  Quantidade de acidentes sem vitimas: ", dadosMunicipios[idMunicipioMenorIVT][3])
		escreva("\n  IVT: ", dadosMunicipios[idMunicipioMenorIVT][4])
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 278; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */