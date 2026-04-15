programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{
		inteiro numeros[5]
		para(inteiro i = 1; i <= 4; i++){
			numeros[i] = Util.sorteia(1, 50)
		}
		para(inteiro i = 4; i >= 1; i--){
			escreva(numeros[i], "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 220; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */