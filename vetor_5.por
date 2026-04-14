programa
{
	inclua biblioteca Util
	inclua biblioteca Tipos
	
	funcao inicio()
	{
		inteiro numeros[6]
		inteiro pares = 0
		para(inteiro i = 1; i<=5; i++){
			numeros[i] = Util.sorteia(1, 50)
			se(numeros[i] % 2 == 0){
				pares++
			}
		}
		escreva("Total de números pares no array: ", pares)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 306; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */