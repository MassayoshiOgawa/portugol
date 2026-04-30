programa
{
	inclua biblioteca Tipos
	inclua biblioteca Texto
	inclua biblioteca Util
	
	cadeia matriz[10][25]
	inteiro tamanhoMapaX = 10
	inteiro tamanhoMapaY = 25
	cadeia stringBase = ""
	inteiro numCharStringBase = 0
	inteiro startingPoint = Util.sorteia(1, tamanhoMapaX - 1)
	logico pararGeracao = falso
	
	funcao calcularMapa(){
		inteiro xPos = 0
		inteiro yPos = 0
		inteiro mover = 0
		inteiro positions[4]
		inteiro posValues[4] // L R U D -- Up Down
		posValues[0] = -1
		posValues[1] = 1
		posValues[2] = 1
		posValues[3] = -1
		para(inteiro i = 0; i < tamanhoMapaX; i++){
			para(inteiro j = 0; j < tamanhoMapaY; j++){
				se(matriz[i][j] == "O"){
					xPos = i
					yPos = j
				}
			}
		}
		para(inteiro p = 1; p <= 4; p++){
			para(inteiro i = 0; i < tamanhoMapaX; i++){
				para(inteiro j = 0; j < tamanhoMapaY; j++){
					cadeia valorCoord = matriz[i][j]
					se(p == 1){
						j -= 1
						valorCoord = matriz[i][j]
						j += 1
					}
					se(p == 2){
						j += 1
						valorCoord = matriz[i][j]
						j -= 1
					}
					se(p == 3){
						i += 1
						valorCoord = matriz[i][j]
						i -= 1
					}
					se(p == 4){
						i -= 1
						valorCoord = matriz[i][j]
						i += 1
					}
					se(valorCoord != "Nada"){
						positions[p - 1] = 1
					} senao {
						positions[p - 1] = 0
					}
				}
			}
		}
		logico temSaida = falso
		para(inteiro i = 1; i <= 4; i++){
			se(positions[i] == 1){
				temSaida = verdadeiro
				pare
			}
		}
		se(temSaida == falso){
			pararGeracao = verdadeiro
			retorne
		}
	}
	
	funcao inicio()
	{	
		para(inteiro i = 0; i < tamanhoMapaX; i++){
			para(inteiro j = 0; j < tamanhoMapaY; j++){
				matriz[i][j] = "Nada"
				se(i == 0){
					stringBase += " "
				}
			}
		}
		stringBase += "||"
		matriz[startingPoint][0] = "O"

		enquanto(pararGeracao == falso){
			calcularMapa()
		}
		
		numCharStringBase = Texto.numero_caracteres(stringBase)
		para(inteiro i = 1; i <= numCharStringBase; i++){
			escreva("=")
		}
		escreva("\n")
		para(inteiro i = 0; i < tamanhoMapaX; i++){
			escreva("|")
			para(inteiro j = 0; j < tamanhoMapaY; j++){
				se(matriz[i][j] != "Nada"){
					escreva("", matriz[i][j])	
				} senao {
					escreva(" ")
				}
			}
			escreva("|\n")
		}
		numCharStringBase = Texto.numero_caracteres(stringBase)
		para(inteiro i = 1; i <= numCharStringBase; i++){
			escreva("=")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1519; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */