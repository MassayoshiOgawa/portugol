programa
{
	
	funcao inicio()
	{
		logico finalizar = falso
		inteiro idadeTotal = 0, idade
		inteiro notaFilme
		inteiro exelente = 0, boa = 0, ruim = 0 // notas 
		inteiro qntVotantes = 0
		enquanto(finalizar == falso){
			caracter resposta, genero
			limpa()
			escreva("Inserir nova opinião? [S/N]")
			leia(resposta)
			se(resposta == 'N'){
				pare
			}
			qntVotantes += 1
			escreva("Digite a idade")
			leia(idade)
			idadeTotal += idade
			escreva("Gênero da pessoa [M/F]:")
			leia(genero)
			escreva("Nota pro filme:")
			leia(notaFilme)
			se(notaFilme <= 5){
				ruim++
			} senao se(notaFilme == 10){
				exelente++
			} senao {
				boa++
			}
		}
		escreva("Média das idades do votantes: ", idadeTotal/qntVotantes)
		escreva("\nNotas 10: ", exelente)
		escreva("\nNotas 5 ou inferiores: ", ruim)
		escreva("\nNotas de 6 a 9: ", boa)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 384; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */