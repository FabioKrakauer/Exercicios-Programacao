programa
{
	//Em todos os vetores, o índice 0 corresponde a nota 1, índice 1 = nota 2 e índice 2 = nota 3
	funcao inicio()
	{
		const cadeia OTIMO = "ÓTIMO"
		const cadeia BOM = "BOM"
		const cadeia REGULAR = "REGULAR"
		const cadeia INVALIDA = "INVALIDA"
		
		inteiro espectadores
		inteiro notas[3] = {0, 0, 0}

		//soma das Notas precisou ser inteiro pois o portugol reclama se dividir inteiro e tentar atribuir a real
		real somaDasNotas = 0.0
		real mediaDoFilme

		cadeia categoriaDoFilme  = INVALIDA
		
		inteiro somaIdadeNotas[3] = {0, 0, 0}
		inteiro mediaIdadePorNota[3] = {0, 0, 0}
		inteiro porcentualPorNota[3] = {0, 0, 0}
		
		escreva("\nDigite o numero de espectadores: ")
		leia(espectadores)

		inteiro respostasValidas = 0
		para(inteiro i = 0; i < espectadores; i++) {
			
			inteiro idade
			inteiro nota
			
			escreva("\nDigite sua idade: ")
			leia(idade)
			escreva("\nDigite sua nota do filme (1, 2 ou 3): ")
			leia(nota)

			se(nota >= 1 e nota <= 3){
				respostasValidas++
				notas[nota - 1] += 1
				somaIdadeNotas[nota - 1] += idade
			}senao {
				escreva("\nSua nota foi inválida e sua opinião descartada.")
			}
		}
		
		limpa()
		
		para(inteiro i = 0; i < 3; i++) {
			se(notas[i] == 0) {
				mediaIdadePorNota[i] = 0
			}senao {
				mediaIdadePorNota[i] = somaIdadeNotas[i] / notas[i]
			}
			porcentualPorNota[i] = notas[i] * 100 / respostasValidas

			somaDasNotas += notas[i]
		}
		
		mediaDoFilme = somaDasNotas / 3

		se(mediaDoFilme >= 1 e mediaDoFilme <= 1.5) {
			categoriaDoFilme = REGULAR
		}senao se(mediaDoFilme > 1.5 e mediaDoFilme < 2.5){
			categoriaDoFilme = BOM
		}senao se(mediaDoFilme >= 2.5 e mediaDoFilme <= 3) {
			categoriaDoFilme = OTIMO
		}
		
		escreva("\nA quantidade de pessoas que deram notas: \nOTIMO = ", notas[0], "\nBOM = ", notas[1], "\nREGULAR = ", notas[2])
		escreva("\nA média das idades das pessoas por nota é: \nOTIMO = ", mediaIdadePorNota[0], "\nBOM = ", mediaIdadePorNota[1], "\nREGULAR = ", mediaIdadePorNota[2])
		escreva("\nA porcentagem de pessoas por nota é: \nOTIMO = ", porcentualPorNota[0], "%\nBOM = ", porcentualPorNota[1], "%\nREGULAR = ", porcentualPorNota[2], "%")
		escreva("\nA categoria do filme é ", categoriaDoFilme)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 317; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */