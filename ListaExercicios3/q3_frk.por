programa
{
	
	funcao inicio()
	{
		const inteiro MASCULINO = 0
		const inteiro FEMININO = 1
		
		inteiro altura1, altura2, altura3, altura4, altura5
		inteiro sexo1, sexo2, sexo3, sexo4, sexo5

		inteiro quantidadeHomens = 0
		inteiro quantidadeMulheres = 0

		inteiro maiorAltura, menorAltura

		real mediaAlturaHomens = 0.0, mediaAlturaMulheres = 0.0

		escreva("Digite 5 alturas (em cm)\n")
		leia(altura1, altura2, altura3, altura4, altura5)

		escreva("Digite 5 sexos \n0. para Masculino\n1. para Feminino)\n")
		leia(sexo1, sexo2, sexo3, sexo4, sexo5)

		menorAltura = altura1
		maiorAltura = altura1

		se(sexo1 == FEMININO){
			quantidadeMulheres++
			mediaAlturaMulheres += altura1
		}senao se(sexo1 == MASCULINO){
			quantidadeHomens++
			mediaAlturaHomens += altura1
		}senao{
			escreva("Falha ao reconhecer sexo da pessoa 1")
		}

		se(sexo2 == FEMININO){
			quantidadeMulheres++
			mediaAlturaMulheres += altura1
		}senao se(sexo2 == MASCULINO){
			quantidadeHomens++
			mediaAlturaHomens += altura2
		}senao{
			escreva("Falha ao reconhecer sexo da pessoa 2")
		}

		se(sexo3 == FEMININO){
			quantidadeMulheres++
			mediaAlturaMulheres += altura3
		}senao se(sexo3 == MASCULINO){
			quantidadeHomens++
			mediaAlturaHomens += altura3
		}senao{
			escreva("Falha ao reconhecer sexo da pessoa 3")
		}

		se(sexo4 == FEMININO){
			quantidadeMulheres++
			mediaAlturaMulheres += altura4
		}senao se(sexo4 == MASCULINO){
			quantidadeHomens++
			mediaAlturaHomens += altura4
		}senao{
			escreva("Falha ao reconhecer sexo da pessoa 4")
		}

		se(sexo5 == FEMININO){
			quantidadeMulheres++
			mediaAlturaMulheres += altura5
		}senao se(sexo5 == MASCULINO){
			quantidadeHomens++
			mediaAlturaHomens += altura5
		}senao{
			escreva("Falha ao reconhecer sexo da pessoa 5")
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
 * @POSICAO-CURSOR = 496; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */