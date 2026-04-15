programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{
		inteiro tempDiasAno[366]
		inteiro menor = 50, maior = -20
		real mediaAbril = 0.0
		real mediaAno = 0.0
		para(inteiro i = 1; i <= 365; i++){
			tempDiasAno[i] = Util.sorteia(-10, 42)
			mediaAno += tempDiasAno[i]
			se(tempDiasAno[i] > maior){
				maior = tempDiasAno[i]
			}
			se(tempDiasAno[i] < menor){
				menor = tempDiasAno[i]
			}
		}
		para(inteiro i = 90; i <= 120; i++){
			mediaAbril += tempDiasAno[i]
		}
		escreva("Menor temperatura do ano: ", menor)
		escreva("\nMaior temperatura do ano: ", maior)
		escreva("\nMédia de temperatura no mês de Abril: ", mediaAbril/30)
		escreva("\nMédia de temperatura no ano: ", mediaAno/365)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 705; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */