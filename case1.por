programa
{
	
	funcao inicio()
	{
		caracter resposta
		escreva("Digite a letra correspondente \nV - Verão \nO - Outono\nI- Inverno\nP - Primavera")
		leia(resposta)
		escolha (resposta){
			caso 'V':
				escreva("Verão")
			caso 'O':
				escreva("Outono")	
			caso 'I':
				escreva("Inverno")
			caso 'P':
				escreva("Primavera")
			caso contrario:
				escreva("Código de estação inválido.")
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 402; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */