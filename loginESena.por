programa
{
	
	funcao inicio()
	{
		cadeia usuario, senha, senhaInserida
		logico aparelhoReconhecido
		inteiro tentativas = 0
		senha = "123"

		escreva("O aparelho é reconhecido? [S/N]")
		leia(usuario)
		aparelhoReconhecido = usuario == "S"

		escreva("Insira o usuário: ")
		leia(usuario)
		escreva("Insira a senha: ")
		leia(senhaInserida)

		se (senhaInserida != senha){
			enquanto ((tentativas < 3) ou (senha == senhaInserida)){
				tentativas += 1
				se ((tentativas == 1) e (aparelhoReconhecido == falso)){
					escreva("AVISO: uau segurança\n")		
				}
				escreva("Senha incorreta.\n")
				escreva("Insira a senha: ")
				leia(senhaInserida)
			}
		}
		escreva("Sucesso no Log-In.")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 558; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */