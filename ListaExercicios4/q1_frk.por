programa
{
	
	funcao inicio()
	{
		const inteiro SALARIO_ISENTO = 1500

		real salario
		real impostoRendaPorcentual
		real impostoDeRenda
		real salario_liquido

		escreva("Digite seu salario: ")
		leia(salario)
	
		se(salario <= SALARIO_ISENTO) {
			impostoRendaPorcentual = 0.0
		}senao se(SALARIO_ISENTO < salario e salario <= 2500) {
			impostoRendaPorcentual = 15.0
		}senao se(salario > 2500 e salario < 4000) {
			impostoRendaPorcentual = 27.5
		}senao {
			impostoRendaPorcentual = 35.0
		}

		impostoDeRenda = salario * impostoRendaPorcentual / 100
		salario_liquido = salario - impostoDeRenda
		escreva("\nA porcentagem do imposto de renda é ", impostoRendaPorcentual)
		escreva("\nO valor do imposto de renda é R$", impostoDeRenda)
		escreva("\nSeu salário liquido é de R$", salario_liquido)
		
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 730; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */