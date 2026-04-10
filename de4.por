programa
{
	
	funcao inicio()
	{
		inteiro horas, minutos, segundos
		escreva("Quantidade de horas: ")
		leia(horas)
		escreva("Quantidade de minutos: ")
		leia(minutos)
		escreva("Quantidade de segundos: ")
		leia(segundos)
		horas *= 60
		horas *= 60
		minutos *= 60
		escreva("Tempo total em segundos: ", segundos + minutos + horas)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 347; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */