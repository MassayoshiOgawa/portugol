programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{
		inteiro numeros[11]
		inteiro maior = 0
		para(inteiro i = 1; i<= 10; i++){
			numeros[i] = Util.sorteia(1, 50)
			se(numeros[i] > maior){
				maior = numeros[i]
			}
		}
		escreva("Maior número no vetor: ", maior)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 276; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */