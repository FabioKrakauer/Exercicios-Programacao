programa
{
	
	funcao inicio()
	{
		inteiro altura1, altura2, altura3, altura4, altura5
		caracter sexo1, sexo2, sexo3, sexo4, sexo5

		inteiro quantidadeHomens = 0
		inteiro quantidadeMulheres = 0

		inteiro maiorAltura, menorAltura

		real mediaAlturaHomens = 0.0, mediaAlturaMulheres = 0.0

		escreva("Digite 5 alturas (em cm)\n")
		leia(altura1, altura2, altura3, altura4, altura5)

		escreva("Digite 5 sexos (M ou F)\n")
		leia(sexo1, sexo2, sexo3, sexo4, sexo5)

		menorAltura = altura1
		maiorAltura = altura1
		se(sexo1 == 'F' ou sexo1 == 'f'){
			quantidadeMulheres++
			mediaAlturaMulheres += altura1
		}senao {
			quantidadeHomens++
			mediaAlturaHomens += altura1
		}

		se(sexo2 == 'F' ou sexo2 == 'f'){
			quantidadeMulheres++
			mediaAlturaMulheres += altura2
		}senao {
			quantidadeHomens++
			mediaAlturaHomens += altura2
		}

		se(sexo3 == 'F' ou sexo3 == 'f'){
			quantidadeMulheres++
			mediaAlturaMulheres += altura3
		}senao {
			quantidadeHomens++
			mediaAlturaHomens += altura3
		}

		se(sexo4 == 'F' ou sexo4 == 'f'){
			quantidadeMulheres++
			mediaAlturaMulheres += altura4
		}senao {
			quantidadeHomens++
			mediaAlturaHomens += altura4
		}

		se(sexo5 == 'F' ou sexo5 == 'f'){
			quantidadeMulheres++
			mediaAlturaMulheres += altura5
		}senao {
			quantidadeHomens++
			mediaAlturaHomens += altura5
		}
		
		se (altura1 > maiorAltura) {
			maiorAltura = altura1
		}
		se(altura2 > maiorAltura) {
			maiorAltura = altura2
		}
		se(altura3 > maiorAltura) {
			maiorAltura = altura3
		}
		se(altura4 > maiorAltura) {
			maiorAltura = altura4
		}
		se(altura5 > maiorAltura) {
			maiorAltura = altura5
		}

		se (altura1 < menorAltura) {
			menorAltura = altura1
		}
		se(altura2 < menorAltura) {
			menorAltura = altura2
		}
		se(altura3 < menorAltura) {
			menorAltura = altura3
		}
		se(altura4 < menorAltura) {
			menorAltura = altura4
		}
		se(altura5 < menorAltura) {
			menorAltura = altura5
		}

		se(quantidadeHomens == 0) {
			mediaAlturaHomens = 0.0
		}senao {
			mediaAlturaHomens = mediaAlturaHomens / quantidadeHomens
		}

		se(quantidadeMulheres == 0) {
			mediaAlturaMulheres = 0.0
		}senao {
			mediaAlturaMulheres = mediaAlturaMulheres / quantidadeMulheres
		}
		
		escreva("\nA maior altura do grupo é ", maiorAltura, " e a menor é ", menorAltura)
		escreva("\nA média das alturas das MULHERES é ", mediaAlturaMulheres, " cm e a media dos homens é ", mediaAlturaHomens, " cm")
		escreva("\nO numero de mulheres é de ", quantidadeMulheres, " e de homens é de ", quantidadeHomens)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2202; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */