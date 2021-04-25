programa
{
	
	funcao inicio()
	{
		const caracter MASCULINO = 'M'
		const caracter FEMININO = 'F'

		const inteiro DOIS_ANOS_EM_MESES = 24

		inteiro numeroCriancas
		inteiro criancasComMenosDeDoisAnos = 0
		
		inteiro criancasMasculinas = 0
		inteiro criancasFemininas = 0

		inteiro porcnt_CriancasMasculinas = 0
		inteiro porcnt_CriancasFemininas = 0
		inteiro porcnt_CriancasComMenosDoisAnos = 0
		
		escreva("Digite o número de crianças no periodo: ")
		leia(numeroCriancas)

		para(inteiro i = 0; i < numeroCriancas; i++) {
			caracter sexo
			inteiro tempoDeVida
			
			escreva("\nDigite o sexo da ", i + 1 , "º criança (M ou F): ")
			leia(sexo)

			escreva("\nDigite o tempo de vida da ", i + 1 , "º criança (em meses): ")
			leia(tempoDeVida)
			
			se(sexo == MASCULINO) {
				criancasMasculinas++
			}senao se(sexo == FEMININO){
				criancasFemininas++
			}senao {
				escreva("\nSexo diferente do esperado...")
			}

			se(tempoDeVida <= DOIS_ANOS_EM_MESES) {
				criancasComMenosDeDoisAnos++
			}
		}

		porcnt_CriancasMasculinas = criancasMasculinas * 100 / numeroCriancas
		porcnt_CriancasFemininas = criancasFemininas * 100 / numeroCriancas
		porcnt_CriancasComMenosDoisAnos = criancasComMenosDeDoisAnos * 100 / numeroCriancas

		escreva("\nA porcentagem de crianças do sexo Masculino é: ", porcnt_CriancasMasculinas, "%")
		escreva("\nA porcentagem de crianças do sexo Feminino é: ", porcnt_CriancasMasculinas, "%")
		escreva("\nA porcentagem de crianças que viveram 24 meses ou menos é: ", porcnt_CriancasComMenosDoisAnos, "%")
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1550; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */