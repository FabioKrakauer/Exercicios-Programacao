programa
{
	
	funcao inicio() {
		inteiro acao 

		escreva("Digite o numero da lição que você deseja \n")
		leia(acao)

		escolha(acao) {
			caso 1:
				calcularMedia()
				pare
			caso 2:
				calcularBaseTriangulo()
				pare
			caso 3:
				transformarMetrosEmCm()
				pare
			caso 4:
				reajustePorcentualFixo()
				pare
			caso 5:
				reajustePorcentualDinamico()
				pare
			caso contrario:
				escreva("Opção inválida")
		}
		// Repete após execução da lição
		// inicio()
	
	}
	//Lição 1
	funcao calcularMedia(){
		real media
		inteiro valorum, valordois

		escreva("Digite o primeiro valor para calcular a media \n")
		leia(valorum)
		escreva("Digite o segundo valor \n")
		leia(valordois)
		
		media = (valorum + valordois) / 2

		escreva("A media entre os valores de ", valorum, " e ", valordois, " é: ", media, " \n")
	}
	// Lição 2
	funcao calcularBaseTriangulo() {
		real base
		real altura
		real area
		
		escreva("Digite a base do triangulo \n")
		leia(base)
		escreva("Digite a altura do triangulo \n")
		leia(altura)
		
		area = (base * altura) / 2

		escreva("A area do triângulo é: ", area, "\n")
	}
	// Lição 3
	funcao transformarMetrosEmCm() {
		real metros
		real centimetros
		
		escreva("Digite o valor em METROS para conversao\n")
		leia(metros)
		centimetros = metros * 100

		escreva(metros, " metros é igual a: ", centimetros, " cm")
	}
	// Lição 4
	funcao reajustePorcentualFixo() {
		real saldo
		real saldoExtra
		real reajuste
		const inteiro porcentagem = 15
		
		escreva("Digite seu saldo\n")
		leia(saldo)
		saldoExtra = (saldo / 100) * porcentagem

		reajuste = saldo + saldoExtra

		escreva("Seu novo saldo é R$", reajuste, " parabens, voce esta rico! \n")
		
	}
	// Lição 5
	funcao reajustePorcentualDinamico() {
		real saldo, saldoExtra, reajuste, valorReajuste, valorReajustado
		
		escreva("Digite seu saldo \n")
		leia(saldo)
		escreva("Digite o valor do reajuste em porcentagem \n")
		leia(reajuste)
		
		valorReajuste = (saldo / 100) * reajuste
		
		valorReajustado = saldo + valorReajuste

		escreva("Seu novo saldo é R$", valorReajustado, "\n")
		escreva("O valor do reajuste foi de R$", valorReajuste) 
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2149; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */