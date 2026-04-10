programa
{
	
	funcao inicio()
	{
		real salario
		inteiro porcenAumento

		escreva("Digite o seu salário: ")
		leia(salario)
		escreva("Digite a porcentagem de aumento: ")
		leia(porcenAumento)

		escreva("Foi descontado: ", salario * porcenAumento/100, "\n")
		escreva("Seu salário com aumento fica: ", salario + (salario * porcenAumento)/100, "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 362; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */