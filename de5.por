programa
{
	
	funcao inicio()
	{
		real salario, ganhaHora, horaMes, inss, imposRenda, sindicato
		escreva("Quanto você ganha por hora? ")
		leia(ganhaHora)
		escreva("Quantas horas você trabalha no mês? ")
		leia(horaMes)

		salario = ganhaHora * horaMes
		inss = (salario * 8)/100
		sindicato = (salario * 5)/100
		imposRenda = (salario * 11)/100
		escreva("Salário bruto: ", salario)
		escreva("\nPagou para o INSS: ", inss)
		escreva("\nPagou sindicato: ", sindicato)
		escreva("\nPagou de imposto de renda: ", imposRenda)
		escreva("\nSalário líquido: ", salario - inss - imposRenda - sindicato)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 545; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */