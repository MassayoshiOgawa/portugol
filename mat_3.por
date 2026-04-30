programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{
		real numeros[4][3]
		real totalSoma = 0.0
		para(inteiro i = 0; i <= 3; i++){
			para(inteiro j = 0; j <= 2; j++){
				numeros[i][j] = Util.sorteia(1, 100)
			}	
		}
		para(inteiro i = 0; i <= 3; i++){
			para(inteiro j = 0; j <= 2; j++){
				totalSoma += numeros[i][j]
			}
		}
		escreva("Soma total de todos os elementos: ", totalSoma)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 218; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */