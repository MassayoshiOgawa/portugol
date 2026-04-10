programa
{
	
	funcao inicio()
	{
		real valorFabrica, comissao, margemLucro, impostos
		escreva("Insira o valor de fábrica do produto: ")
		leia(valorFabrica)
		escreva("Valor da comissão: ")
		leia(comissao)
		escreva("Margem de lucro desejada: ")
		leia(margemLucro)
		escreva("Impostos governamentais: ")
		leia(impostos)
		
		escreva("Resultados Finais: \n")
		escreva("Comissão: ", valorFabrica * comissao)
		escreva("Margem de Lucro: ", valorFabrica * comissao * margemLucro)
		escreva("Impostos Governamentais: ", valorFabrica * comissao * margemLucro * impostos)
		escreva("Valor final: ", (valorFabrica * comissao)+(valorFabrica * comissao * margemLucro)+(valorFabrica * comissao * margemLucro * impostos))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 727; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */