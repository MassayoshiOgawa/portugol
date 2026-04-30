programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{
		inteiro predio[5][7]
		inteiro totalSalario = 0
		inteiro totalPredios = 0
		para(inteiro i = 1; i <= 4; i++){
			para(inteiro j = 1; j <= 6; j++){
				predio[i][j] = Util.sorteia(1500, 5000)
				totalSalario += predio[i][j]
				totalPredios++
			}
		}
		escreva("Média dos salários: ", totalSalario/totalPredios)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 251; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */