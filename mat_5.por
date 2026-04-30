programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{
		inteiro numeros[4][4]
		para(inteiro i = 0; i <= 3; i++){
			para(inteiro j = 0; j <= 3; j++){
				numeros[i][j] = Util.sorteia(1, 100)
			}	
		}
		para(inteiro i = 0; i <= 3; i++){
			para(inteiro j = 0; j <= 3; j++){
				se(i == j){
					escreva("Valor da coluna ", i+1, " da linha ", j+1, ": ", numeros[i][j], "\n")
				}
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 293; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */