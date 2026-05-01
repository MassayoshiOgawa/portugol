programa
{
	inclua biblioteca Util
	
	cadeia matriz[25][50]
	inteiro tamanhoMapaX = 25
	inteiro tamanhoMapaY = 50
	logico pararGeracao = falso
	inteiro lastXpos = 0, lastYpos = 0
  inteiro moverX = 0, moverY = 0

  funcao mover(cadeia direction){
    se(direction == "a" e matriz[moverX][moverY - 1] != "Nada"){
      matriz[moverX][moverY] = "Caminho"
      matriz[moverX][moverY - 1] = charCharacter
      moverY -= 1
    }
    se(direction == "d" e matriz[moverX][moverY + 1] != "Nada"){
      matriz[moverX][moverY] = "Caminho"
      matriz[moverX][moverY + 1] = charCharacter
      moverY += 1
    }
    se(direction == "s" e matriz[moverX + 1][moverY] != "Nada"){
      matriz[moverX][moverY] = "Caminho"
      matriz[moverX + 1][moverY] = charCharacter
      moverX += 1
    }
    se(direction == "w" e matriz[moverX - 1][moverY] != "Nada"){
      matriz[moverX][moverY] = "Caminho"
      matriz[moverX - 1][moverY] = charCharacter
      moverX -= 1
    }
  }

	cadeia charTeto = "=", charParede = "|", charCharacter = "☺"
	cadeia charFlat = " ", charWall = " ", charBotLeft = "┕", charTopRight = "┓", charBotRight = "┙", charTopLeft = "┍"

	funcao calcularMapa()
	{
		inteiro xPos = 0, yPos = 0
		inteiro positions[4] 
		
		para(inteiro i = 0; i < tamanhoMapaX; i++){
			para(inteiro j = 0; j < tamanhoMapaY; j++){
				se(matriz[i][j] == "O"){
					xPos = i
					yPos = j
				}
			}
		}
		
		se(yPos - 1 >= 0 e matriz[xPos][yPos - 1] == "Nada") { positions[0] = 0 } senao { positions[0] = 1 }
		se(yPos + 1 < tamanhoMapaY e matriz[xPos][yPos + 1] == "Nada") { positions[1] = 0 } senao { positions[1] = 1 }
		se(xPos + 1 < tamanhoMapaX e matriz[xPos + 1][yPos] == "Nada") { positions[2] = 0 } senao { positions[2] = 1 }
		se(xPos - 1 >= 0 e matriz[xPos - 1][yPos] == "Nada") { positions[3] = 0 } senao { positions[3] = 1 }
		
		logico temSaida = falso
		para(inteiro i = 0; i < 4; i++){
			se(positions[i] == 0){ temSaida = verdadeiro }
		}
		
		se(temSaida == falso){
			pararGeracao = verdadeiro
			retorne
		}
		
		logico ladoEscolhido = falso
		enquanto(ladoEscolhido == falso){
			inteiro idLado = Util.sorteia(1, 4)
			se(idLado == 1 e positions[0] == 0){
				matriz[xPos][yPos] = "Caminho"
				matriz[xPos][yPos - 1] = "O"
				ladoEscolhido = verdadeiro
			}
			senao se(idLado == 2 e positions[1] == 0){
				matriz[xPos][yPos] = "Caminho"
				matriz[xPos][yPos + 1] = "O"
				ladoEscolhido = verdadeiro
			}
			senao se(idLado == 3 e positions[2] == 0){
				matriz[xPos][yPos] = "Caminho"
				matriz[xPos + 1][yPos] = "O"
				ladoEscolhido = verdadeiro
			}
			senao se(idLado == 4 e positions[3] == 0){
				matriz[xPos][yPos] = "Caminho"
				matriz[xPos - 1][yPos] = "O"
				ladoEscolhido = verdadeiro
			}
		}
	}

	funcao desenharParedes()
	{
		para(inteiro i = 0; i < tamanhoMapaX; i++){
			para(inteiro j = 0; j < tamanhoMapaY; j++){
				se(matriz[i][j] == "Caminho" ou matriz[i][j] == "O"){
					se(i - 1 >= 0 e matriz[i-1][j] == "Nada") { matriz[i-1][j] = charFlat }
					se(i + 1 < tamanhoMapaX e matriz[i+1][j] == "Nada") { matriz[i+1][j] = charFlat }
					se(j - 1 >= 0 e matriz[i][j-1] == "Nada") { matriz[i][j-1] = charWall }
					se(j + 1 < tamanhoMapaY e matriz[i][j+1] == "Nada") { matriz[i][j+1] = charWall }
				}
			}
		}
	}
	
	funcao inicio()
	{
		logico mapaBom = falso
    inteiro tentativas = 0
		enquanto(mapaBom == falso){
			tentativas++
			pararGeracao = falso // <--- IMPORTANTE: Resetar aqui!
			
			// Limpa matriz
			para(inteiro i = 0; i < tamanhoMapaX; i++){
				para(inteiro j = 0; j < tamanhoMapaY; j++){
					matriz[i][j] = "Nada"
				}
			}
			
			// Start aleatório
			inteiro startX = Util.sorteia(1, tamanhoMapaX - 2)
      moverX = startX
      moverY = 0
			matriz[startX][0] = "O"

			// Gera o caminho
			enquanto(pararGeracao == falso){
				calcularMapa()
			}

			// Conta caminhos
			inteiro contagem = 0
			para(inteiro i = 0; i < tamanhoMapaX; i++){
				para(inteiro j = 0; j < tamanhoMapaY; j++){
					se(matriz[i][j] == "Caminho"){ contagem++ }
				}
			}

      para(inteiro i = 0; i < tamanhoMapaX; i++){
        para(inteiro j = 0; j < tamanhoMapaY; j++){
          se(matriz[i][j] == "O"){
            lastXpos = i
            lastYpos = j
          }
        }
      }
			se(contagem > 64 e lastYpos >= tamanhoMapaY - 1){
				mapaBom = verdadeiro
			}
		}
    logico sairDoModoMover = falso
    enquanto(sairDoModoMover == falso){
      limpa()
      // Só desenha as paredes e as bordas no mapa final aprovado
      desenharParedes()
      
      inteiro numBorda = tamanhoMapaY + 2
      para(inteiro i = 1; i <= numBorda; i++) { escreva(charTeto) }
      escreva("\n")
      escreva("\n")
      
      matriz[moverX][moverY] = charCharacter
      para(inteiro i = 0; i < tamanhoMapaX; i++){
        escreva(charParede)
        para(inteiro j = 0; j < tamanhoMapaY; j++){
          se(i == moverX e j == moverY){ escreva(charCharacter) }
          senao se(matriz[i][j] == "Caminho"){ escreva(" ") }
          senao se(matriz[i][j] == "Nada"){ escreva("▒") }
          senao se(matriz[i][j] == "O") {escreva(" ")}
          senao { escreva(matriz[i][j]) }
        }
        escreva(charParede, "\n")
      }
      para(inteiro i = 1; i <= numBorda; i++) { escreva(charTeto) }
      escreva("\nMapa gerado com sucesso em ", tentativas, " tentativas!")
      escreva("\n")
      escreva("\n       W[↑]        ")
      escreva("\n   A[←]    D[→]    ")
      escreva("\n       S[↓]        ")
      escreva("\n")
      cadeia movimento = ""
      leia(movimento)
      se(movimento == "a" ou movimento == "d"){
        se(moverX > 0 e moverX < tamanhoMapaX){
          mover(movimento)
        }
      }
      se(movimento == "s" ou movimento == "w"){
        se(moverY > 0 e moverY < tamanhoMapaY){
          mover(movimento)
        }
      }
      
    }

	}
}