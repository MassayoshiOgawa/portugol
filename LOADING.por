programa
{
	inclua biblioteca Util
	
	funcao wait(inteiro segundos){
		enquanto (segundos > 0){
			segundos -= 1
			inteiro tempo = Util.sorteia(270, 345)
			para(inteiro i = 0; i <= tempo; i++){
				se (i > 0){
					escreva("")
				}
			}	
		}
	}
	
	funcao inicio()
	{
		caracter espaco = ' '
		caracter bloco = '▩'
		inteiro base = 10
		real porcent = base * 0.1
		inteiro aux = base
		real soma = 0
		escreva("Tela de loading\n[")
		para (inteiro i = 0; i <= base - 1; i++){
			escreva(espaco)
		}
		escreva("] 0.0%")
		para (inteiro i = 0; i <= base; i++){
			wait(1)
			limpa()
			se (i >= 1){
				inteiro indMaior = Util.sorteia(0, 4)
				real indMenor = (Util.sorteia(0, 9)) * 0.1
				soma = indMaior + indMenor
			}
			escreva("Tela de loading\n")
			escreva("[")
			para (inteiro j = aux; j <= base - 1; j++){
				escreva(bloco)
			}
			para (inteiro j = i; j < base; j++){
				escreva(espaco)
			}
			real calc
			se (i <= base - 1){
				calc = ((i * 10)/porcent) + soma
			} senao {
				calc = ((i * 10)/porcent)
			}
			escreva("] ", calc, "%")
			aux -= 1
		}
		wait(1)
		escreva("\nLoading concluído!")
		wait(1)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 546; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */