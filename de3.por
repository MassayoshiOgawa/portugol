programa
{
	
	funcao inicio()
	{
		cadeia nomeVendedor
		inteiro carrosVendidos, vendidoConcessionaria, salario, comissao
		escreva("Seu nome: ")
		leia(nomeVendedor)
		escreva("Carros vendidos pelo vendedor: ")
		leia(carrosVendidos)
		escreva("Total vendido pela concessionaria em reais: ")
		leia(vendidoConcessionaria)

		comissao = ((vendidoConcessionaria * 5)/100)
		escreva("Nome: ", nomeVendedor)
		escreva("\nComissão: ", comissao)
		escreva("\nSalário: ", 500 + (carrosVendidos * 50) + comissao)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 510; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */