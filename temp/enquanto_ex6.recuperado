programa
{
	
	funcao inicio()
	{
		real salario, maiorSalario = 0.0, somaDosSalarios = 0.0
		real porcentagem
		real qntAbaixo150 = 0.0
		inteiro qntHabitantes = 0
		inteiro filhos, totalFilhos = 0
		logico finalizar = falso
		caracter resposta
		enquanto(finalizar == falso){
			limpa()
			qntHabitantes++
			escreva("Insira o salário do habitante: ")
			leia(salario)
			se(salario > maiorSalario){
				maiorSalario = salario
			}
			se(salario < 150){
				qntAbaixo150++
			}
			somaDosSalarios += salario
			escreva("Digite o número de filhos do habitante: ")
			leia(filhos)
			totalFilhos += filhos
			escreva("Deseja inserir mais habitante? [S/N]")
			leia(resposta)
			se(resposta == 'N'){
				finalizar = verdadeiro
			}
		}
		limpa()
		escreva("Média do salário da população: ", somaDosSalarios/qntHabitantes)
		escreva("\nMédida de número de filhos: ", totalFilhos/qntHabitantes)
		escreva("\nMaior salário entre os habitantes: ", maiorSalario)
		porcentagem = (qntAbaixo150*100)/qntHabitantes
		escreva("\nPercentual de pessoas que recebem abaixo de R$150: %", porcentagem)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 748; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */