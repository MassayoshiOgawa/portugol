programa {

  inclua biblioteca Texto --> t
  inclua biblioteca Tipos

  funcao inicio() {
    inteiro pontos[2][3], opcao, pesqJogo, maiorPonto = 0, menorPonto = 0
    cadeia equipes[2], pesqEquipe, repetir, equipeVencedora, equipePerderora, nomeEquipeVen, nomeEquipePer

    equipeVencedora = ""

    para(inteiro i = 0; i < 2; i++){
      escreva("Digite o nome da equipe: ")
      leia(equipes[i])
      equipes[i] = t.caixa_alta(equipes[i])

      para(inteiro j = 0; j < 3; j++){
        escreva("Digite quantos pontos a equipe ", equipes[i], " fez no ", (j+1), "° jogo: ")
        leia(pontos[i][j])
      }
    }

    faca{

    escreva("\nVer a tabela inteira (opção 1) ")
    escreva("\nVer os nomes das equipes (opção 2) ")
    escreva("\nVer a pontuação de um equipe em determinado jogo (opção 3) ")
    escreva("\nVer a equipe vencedora em um jogo específico (opção 4) ")
    escreva("\nVer a equipe perdedora em um jogo específico (opção 5) ")

    escreva("\nEscolha uma das opções acima: ")
    leia(opcao)

    limpa()

    escolha(opcao){
      caso 1:
        para(inteiro i = 0; i < 2; i++){
          escreva("\nEquipe: ", equipes[i]," | ")
          para(inteiro j = 0; j < 3; j++){
            escreva("Jogo ", (j+1), ": ", pontos[i][j]," | ")
          }
        }
      pare
      caso 2:
        para(inteiro i = 0; i < 2; i++){
          escreva("\nEquipe ", (i+1), ": ", equipes[i])
        }
      pare
      caso 3: 
        escreva("\nQual equipe você deseja pesquisar?: ")
        leia(pesqEquipe)
        pesqEquipe = t.caixa_alta(pesqEquipe)
        para(inteiro i = 0; i < 2; i++){
          se(pesqEquipe == equipes[i]){
            escreva("\nQual jogo você quer ver a pontuação da equipe ", equipes[i] ,": ")
            leia(pesqJogo)
            para(inteiro j = 0; j < 3; j++){
              se(pesqJogo == (j+1)){
                escreva("\nPontuação da equipe ", equipes[i], " no " , (j+1),": ", pontos[i][j])
              }
            }
          }
        }
      pare
      caso 4:
        escreva("\nQual jogo você quer ver quem venceu?: ")
        leia(pesqJogo)
        maiorPonto = 0
        
        para(inteiro i = 0; i < 2; i++){
          se(pontos[i][pesqJogo -1 ] > maiorPonto){
            maiorPonto = pontos[i][pesqJogo-1]
            equipeVencedora = equipes[pesqJogo - 1]
          }
        }
        escreva("Equipe vencedora: ", equipeVencedora)
        escreva("\nMaior ponto: ", maiorPonto)
        pare
      }
    escreva("\nDeseja repetir o programa? (S/N): ")
    leia(repetir)
    repetir = t.caixa_alta(repetir)

    }enquanto(repetir == "S")
  }
  
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2627; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */