programa
{
	
	funcao inicio()
	{
		logico finalizar = falso
		enquanto(finalizar == falso){
			limpa()
			real peso, altura
			escreva("Insira o peso e a altura separadamente")
			leia(peso, altura)
			real imc = (peso * peso)/altura
			se (imc < 18.5){
				escreva("Abaixo do peso")	
			}
			se ((imc >= 18.5) e (imc <= 24.9)){
				escreva("Peso normal")
			}
			se ((imc >= 25) e(imc <= 29.9)){
				escreva("Sobrepeso")
			}
			se (imc >= 30){
				escreva("Obesidade")
			}
			caracter resposta
			escreva("Deseja usar novamente? [S/N]")
			leia(resposta)
			se(resposta == 'N'){
				finalizar = verdadeiro
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 617; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */