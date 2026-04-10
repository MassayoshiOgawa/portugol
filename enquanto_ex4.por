programa
{
	
	funcao inicio()
	{
		inteiro numero1 = 0, numero2 = 0, tentativa = 0
		escreva("Insira o primeiro número:")
		leia(numero1)
		escreva("Insira o segundo número:")
		leia(numero2)
		escreva("Agora, escreva qual é a soma deles:")
		enquanto(tentativa != numero1 + numero2){
			leia(tentativa)
			se(tentativa != numero1 + numero2){
				escreva("tente novamente: ")
			}
		}
		escreva("resultado correto!")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 373; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */