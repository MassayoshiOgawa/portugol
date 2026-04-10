programa
{
	
	funcao inicio()
	{
		cadeia nome, validade, preco, cor, quantidade, resposta, aux
		cadeia produtos[10][5]
		inteiro j = 0
		inteiro qntProdutosRegistrados = -1
		inteiro ids = 0
		logico parar = falso

		enquanto (parar == falso) {
			limpa()
			j = 0
			qntProdutosRegistrados += 1
			ids += 1
			escreva("Nome do produto: ")
			leia(nome)	
			aux = "Nome: "
			produtos[qntProdutosRegistrados][j] = (aux + nome)
			j += 1
			escreva("Validade: ")
			leia(validade)	
			aux = "Validade: "
			produtos[qntProdutosRegistrados][j] = (aux + validade)
			j += 1
			escreva("Preço: ")
			leia(preco)	
			aux = "Preço: "
			produtos[qntProdutosRegistrados][j] = (aux + preco)
			j += 1
			escreva("cor do Produto: ")
			leia(cor)	
			aux = "Cor: "
			produtos[qntProdutosRegistrados][j] = (aux + cor)
			j += 1
			escreva("Quantidade do Produto: ")
			leia(quantidade)	
			aux = "Quantidade: "
			produtos[qntProdutosRegistrados][j] = (aux + quantidade)
			j += 1
			limpa()
			escreva("Gostaria de Adicionar mais um produto? [S/N]")
			leia(resposta)
			se (resposta == "N") {
				parar = verdadeiro	
			}
		}
		para (inteiro i = 0; i < ids; i++){
			para (inteiro k = 0; k < 5; k++) {
				escreva("\n", produtos[i][k])	
			}
			escreva("\n")
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1086; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */