programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{
		inteiro numeros[11]
		inteiro menor = 51
		inteiro posicao = 0
		para(inteiro i = 1; i <= 10; i++){
			numeros[i] = Util.sorteia(1, 50)
			se(numeros[i] < menor){
				menor = numeros[i]
				posicao = i
			}
		}
		escreva("Menor número no array: ", menor)
		escreva("\nPosição do menor número: ", posicao)
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 260; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */