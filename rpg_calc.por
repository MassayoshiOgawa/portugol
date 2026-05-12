programa
{
	inclua biblioteca Matematica
	funcao inicio(){
		para(inteiro i = 1; i <= 4; i++){
			logico terminar = falso
			cadeia pause = ""
			inteiro choose = 0
			real hp = 2.0
			real atk = 3.0
			real int = 1.0
			real mult = 1.2
			se(i == 1){
			escreva("\nGuerreiro: \n")
			hp = 4
			atk = 2
			int = 1
			}
			se(i == 2){
				escreva("\nArqueiro: \n")
			hp = 2
			atk = 3
			int = 2
			}
			se(i == 3){
			escreva("\nMago: \n")
			hp = 3
			atk = 1
			int = 3
			}
			se(i == 4){
			escreva("\nSacerdote: \n")
			hp = 3
			atk = 2
			int = 2
			}
	
	
			inteiro hpFinal = 0
			inteiro atkFinal = 0
			inteiro intFinal = 0
	
			para(inteiro j = 0; j < 50; j++){
				hpFinal += hp * mult
				atkFinal += atk
				intFinal += int
			}
			escreva("Pontos: ", "\n")
			escreva(hpFinal * 7 * mult, " HP\n")
			escreva(atkFinal, " ATK\n")
			escreva(intFinal, " INT\n")
			}
		}
	}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 800; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */