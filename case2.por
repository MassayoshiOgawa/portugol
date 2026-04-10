programa
{
	
	funcao inicio()
	{
		real n1, n2
		caracter op
		escreva("Digite o primeiro número: ")
		leia(n1)
		escreva("Digite o segundo número")
		leia(n2)
		escreva("Qual operação você quer realizar: ")
		leia(op)
		escolha (op){
			caso '+':
				n1 += n2
				pare
			caso '-':
				n1 -= n2
				pare
			caso 'x':
				n1 *= n2
				pare	
		}
		escreva("Resultado: ", n1)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 385; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */