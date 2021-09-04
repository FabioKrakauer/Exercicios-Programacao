programa
{
	
	funcao inicio()
	{
		inteiro alunos = 0
		inteiro maiorIdade = 0, menorIdade = 0
		real mediaIdade = 0.0, mediaNotas = 0.0

		real somaIdades = 0.0, somaNotas = 0.0

		real maiorNota = 0.0
		cadeia alunoMaiorNota = "NAO INDENTIFICADO"

		real menorNota = 0.0
		cadeia alunoMenorNota = "NAO INDENTIFICADO"

		inteiro idade = 0
		enquanto(idade != -1) {
			cadeia nome
			real nota
			
			escreva("\nDigite a idade do aluno: ")
			leia(idade)

			//Valida se a idade digitada é diferente de 1 para não executar mais uma vez o código.
			se(idade != -1) {
				escreva("\nDigite o nome do aluno: ")
				leia(nome)

				escreva("\nDigite a nota do aluno: ")
				leia(nota)
				
				se(alunos == 0) {
					maiorIdade = idade
					menorIdade = idade

					maiorNota = nota
					menorNota = nota

					alunoMaiorNota = nome
					alunoMenorNota = nome
				}
				
				se(idade > maiorIdade) {
					maiorIdade = idade
				}senao se(idade < menorIdade) {
					menorIdade = idade
				}
				somaIdades += idade

				se(nota > maiorNota) {
					maiorNota = nota
					alunoMaiorNota = nome
				}senao se(nota < menorNota) {
					menorNota = nota
					alunoMenorNota = nome
				}
				somaNotas += nota
				alunos++
			}
		}
		mediaIdade = somaIdades / alunos
		mediaNotas = somaNotas / alunos
		
		escreva("\nA quantidade de alunos é de: ", alunos)
		escreva("\nA maior idade é ", maiorIdade, " e a menor é ", menorIdade, " e a média é ", mediaIdade)
		escreva("\nA media das notas é de ", mediaNotas)
		escreva("\nA maior nota é de ", maiorNota, " e pertence ao aluno ", alunoMaiorNota)
		escreva("\nA menor nota é de ", menorNota, " e pertence ao aluno ", alunoMenorNota)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1126; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */