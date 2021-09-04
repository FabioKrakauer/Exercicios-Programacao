programa
{
	
	funcao inicio()
	{
		const inteiro SECRETARIO = 1
		const inteiro TESOUREIRO = 2
		const inteiro PROFESSOR = 3
		const inteiro COORDENADOR = 4
		const inteiro DIRETOR = 5
		const inteiro INVALIDO = -1

		const inteiro AUMENTO_SECRETARIO = 45
		const inteiro AUMENTO_TESOUREIRO = 35
		const inteiro AUMENTO_PROFESSOR = 25
		const inteiro AUMENTO_COORDENADOR = 15
		const inteiro AUMENTO_DIRETOR = 0
		
		real salario
		inteiro aumentoPorcentual = 0
		real aumentoNoSalario
		real novoSalario

		inteiro codigoCargo = INVALIDO
		escreva("Digite seu salario: ")
		leia(salario)

		escreva("\nDigite o codigo do seu cargo \n1. Secretario\n2. Tesoureiro\n3. Professor\n4. Coordenador\n5. Diretor\n")
		leia(codigoCargo)
		
		limpa()
		
		escolha(codigoCargo) {
			caso SECRETARIO:
				aumentoPorcentual = AUMENTO_SECRETARIO
				pare
			caso TESOUREIRO:
				aumentoPorcentual = AUMENTO_TESOUREIRO
				pare
			caso PROFESSOR:
				aumentoPorcentual = AUMENTO_PROFESSOR
				pare
			caso COORDENADOR:
				aumentoPorcentual = AUMENTO_COORDENADOR
				pare
			caso DIRETOR:
				aumentoPorcentual = AUMENTO_DIRETOR
				pare
			caso contrario:
				codigoCargo = INVALIDO
				pare
		}

		se(codigoCargo != INVALIDO) {
			aumentoNoSalario = salario * aumentoPorcentual / 100
			novoSalario = salario + aumentoNoSalario
			escreva("Você ganhou um aumento de ", aumentoPorcentual, "% que correspondem a R$", novoSalario, " PARABENS!")
		}senao {
			escreva("O codigo do cargo esta errado, tente novamente!")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1163; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */