programa
{
	
	funcao inicio()
	{
		const caracter MASCULINO = 'M'
		const caracter FEMININO = 'F'

		const inteiro NUM_PESSOAS = 5
		
		inteiro alturas[NUM_PESSOAS]
		caracter sexos[NUM_PESSOAS]

		inteiro maiorAltura = 0
		inteiro menorAltura = 0

		real somaAlturasHomens = 0.0
		real somaAlturasMulheres = 0.0
		real mediaAlturasHomens = 0.0
		real mediaAlturaMulheres = 0.0

		inteiro homens = 0
		inteiro mulheres = 0
		para(inteiro i = 0; i < NUM_PESSOAS; i++) {
			escreva("Digite a altura da ", i + 1, "º pessoa: ")
			leia(alturas[i])

			escreva("Digite o sexo da ", i + 1, "º pessoa: ")
			leia(sexos[i])
		}

		maiorAltura = alturas[0]
		menorAltura = alturas[0]
		para(inteiro i = 0; i < NUM_PESSOAS; i++) {
			maiorAltura = maiorValor(maiorAltura, alturas[i])
			menorAltura = menorValor(menorAltura, alturas[i])

			se(sexos[i] == MASCULINO) {
				somaAlturasHomens += alturas[i]
				homens++
			}senao {
				somaAlturasMulheres += alturas[i]
				mulheres++
			}
		}

		mediaAlturaMulheres = somaAlturasMulheres / NUM_PESSOAS
		mediaAlturasHomens = somaAlturasHomens / NUM_PESSOAS

		escreva("Maior altura: ", maiorAltura, " Menor altura: ", menorAltura)
		escreva("Media mulher: ", mediaAlturaMulheres, " media homnes ", mediaAlturasHomens)
		escreva("homens: " , homens, " mulheres: ", mulheres)
	}

	funcao inteiro maiorValor(inteiro altura1, inteiro altura2) {
		se(altura1 > altura2) {
			retorne altura1
		}senao {
			retorne altura2
		}
	}
	funcao inteiro menorValor(inteiro altura1, inteiro altura2) {
		se(altura1 < altura2) {
			retorne altura1
		}senao {
			retorne altura2
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 812; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */