programa
{
	
	funcao inicio()
	{
		inteiro num
		escreva("Insira o código, 10, 20 ou 30")
		leia(num)
		escolha (num){
			caso 10:
				escreva("Categoria Infantil")
				pare	
			caso 20:
				escreva("Categoria Juvenil")
				pare
			caso 30:
				escreva("Categoria Adulto")
				pare	
			caso contrario:
				escreva("Código não cadastrado.")
				pare
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 357; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */