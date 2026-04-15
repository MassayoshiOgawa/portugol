programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{
		real numeros1[11]
		real numeros2[11]
		real soma[11]
		para(inteiro i = 1; i<= 10; i++){
			inteiro primario = Util.sorteia(1, 50)
			inteiro secundario = Util.sorteia(10, 99)
			numeros1[i] = primario + (secundario * -0.01)
		}
		para(inteiro i = 1; i<= 10; i++){
			inteiro primario = Util.sorteia(1, 50)
			inteiro secundario = Util.sorteia(10, 99)
			numeros2[i] = primario + (secundario * -0.01)
		}
		para(inteiro i = 1; i <= 10; i++){
			soma[i] = numeros1[i] + numeros2[i]		
			escreva(soma[i], "\n")	
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 584; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */