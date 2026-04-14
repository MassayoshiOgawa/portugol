programa
{

	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		escreva("Buckshot Roulette")
		cadeia nome, pause
		inteiro vidas, evidas, decisao
		inteiro blanks, liveRounds
		inteiro tambor[6], cartuchos, qntCartuchos, valorCartucho
		logico vez, temBala
		inteiro round
		cadeia poder[5], epoder[5], poderUsado
    		cadeia poderInv[5]
		inteiro qntPoder, qntEpoder, escolhaPoder
		logico roundRecemIniciado

		para(inteiro i = 0; i < 5; i++){
			poder[i] = "nenhum"
			epoder[i] = "nenhum"
			poderInv[i] = "nenhum"
		}
		qntPoder = 0
		qntEpoder = 0

		escreva("\nInsira o seu nome: ")
		leia(nome)
		
		vidas = 3
		evidas = 3
		temBala = falso
		cartuchos = 1
		vez = verdadeiro
		round = 0
		roundRecemIniciado = falso

		blanks = 0
		liveRounds = 0
		qntCartuchos = u.sorteia(2, 6)
		enquanto(round < 3){
			round += 1
			vidas = 3
			evidas = 3
			roundRecemIniciado = verdadeiro
			inteiro poderDado = 1, epoderDado = 1
			se (round >= 2){
				para(inteiro i = 0; i < 5; i ++){
					se ((poder[i] == "nenhum") e (poderDado <= 2)){
						poderDado += 1
						inteiro power = u.sorteia(1, 3)
						escolha (power){
							caso 1:
								poder[i] = "Cigarro"
								pare
							caso 2:
								poder[i] = "Bebida"
								pare
							caso 3:
								poder[i] = "Faca de Serra"
						}
					}
				}

				para(inteiro i = 0; i < 5; i ++){
					se ((epoder[i] == "nenhum") e (epoderDado <= 2)){
						epoderDado += 1
						inteiro power = u.sorteia(1, 3)
						escolha (power){
							caso 1:
								epoder[i] = "Cigarro"
								pare
							caso 2:
								epoder[i] = "Bebida"
								pare
							caso 3:
								epoder[i] = "Faca de Serra"
						}
					}
				}
			}
			escreva("Round ", round)
			leia(pause)
			enquanto ((evidas > 0) e (vidas > 0)){	
				se ((liveRounds == 0) ou (roundRecemIniciado == verdadeiro)){
					roundRecemIniciado = falso
					blanks = 0
					liveRounds = 0
					inteiro maxTentativas = 50
					enquanto(((blanks < 1) e (liveRounds < 1)) ou maxTentativas < 2){
						maxTentativas -= 1
						qntCartuchos = u.sorteia(2, 6)
						cartuchos = qntCartuchos
						blanks = 0
						liveRounds = 0
						para (inteiro i = 0; i < qntCartuchos; i++){
							logico tipo = u.sorteia(1, 2) == 1
							se (tipo == verdadeiro){
								tambor[i] = 1
								liveRounds += 1
							} senao {
								tambor[i] = 0	
								blanks += 1
							}
						}
					}
					limpa()
					escreva("Novas munições foram inseridas.")
					leia(pause)
				}
	
				valorCartucho = 2
				inteiro maxTentativas = 37
				enquanto ((cartuchos > 0) e (maxTentativas > 0) e (evidas > 0) e (vidas > 0)){
	
					se ((liveRounds == 0)){
						pare	
					}
					temBala = falso
					maxTentativas -= 1
					valorCartucho = 2
					inteiro calculo
					se (qntCartuchos - 1 == 1){
						calculo = 1
					} senao {
						se (qntCartuchos == 1){
							calculo = 1
						} senao {
						calculo = u.sorteia(0, qntCartuchos - 1)	
						}
					}
					
					temBala = tambor[calculo] != 3
					se (temBala == verdadeiro){
						se (tambor[calculo] == 1){
							valorCartucho = -1	
						} senao {
							valorCartucho = 0
						}
						cartuchos -= 1
						tambor[calculo] = 3
					}
				
		
					se (nao temBala){
						pare
					}
					logico podeContinuar = falso
					se (vez == verdadeiro){
						enquanto (podeContinuar == falso){
							limpa()
							escreva("Round ", round, "\n")
							escreva(nome, " digite sua jogada: ")
							escreva("\n ")
							escreva("\nBlanks: ", blanks)
							escreva("\nLive Rounds: ", liveRounds)
							escreva("\n ")
							escreva("\n[1] No inimigo")
							escreva("\n[2] Em si mesmo")
							se (round > 1){
								escreva("\n[3] Usar Utilitário")							
							}
							escreva("\nSuas vidas: ", vidas)
							escreva("\nVidas do inimigo: ", evidas)
							escreva("\n ")
							leia(decisao)
							limpa()
							
							escolha (decisao){
								caso 1:
									evidas += valorCartucho
									escreva("Você atirou no inimigo.")
									se (valorCartucho == -1){
										escreva("\nO cartucho era um Live Round.")
										escreva("\nVidas do inimigo: ", evidas)
										se (evidas <= 0){
											escreva("\nO inimigo morreu.")	
										}
										liveRounds -= 1
									} senao {
										escreva("\nO cartucho era um Blank.")
										escreva("\nVidas do inimigo: ", evidas)
										vez = falso
										blanks -= 1
									}
									podeContinuar = verdadeiro
								pare
								caso 2:
									vidas += valorCartucho
									escreva("Você atirou em si mesmo.")
									se (valorCartucho == -1){
										escreva("\nO cartucho era um Live Round.")
										escreva("\nSuas vidas: ", vidas)
										se (evidas <= 0){
											escreva("\nVocê morreu.")	
										}
										vez = falso
										liveRounds -= 1
									} senao {
										escreva("\nO cartucho era um Blank.")
										escreva("\nSuas vidas: ", vidas)
										blanks -= 1
									}
									podeContinuar = verdadeiro
								pare
								caso 3:
									se (round <= 1){
										pare	
									}
									inteiro id = 0
									escreva("Seus poderes: \n")
									para (inteiro i = 0; i < 5; i++){
										se(poder[i] != "nenhum"){
											id += 1
											escreva("[" + id + "] " + poder[i], "\n")
                   								poderInv[i] = poder[i]
										}
									}
									id = 0
									escreva(" \n ")
									escreva("Poderes do inimigo: \n")
									para (inteiro i = 0; i < 5; i++){
										se(poder[i] != "nenhum"){
											id += 1
											escreva("[" + id + "] " + epoder[i], "\n")
										}
									}

								pare
							}
			            se (decisao != 3){
						leia(pause)
			            } senao {
			              leia(escolhaPoder)
			              limpa()
			              poderUsado = poderInv[escolhaPoder]
			              poderInv[escolhaPoder] = "nenhum"
			              poder[escolhaPoder] = "nenhum"
			              escreva("Você usou: ", poderUsado + "\n")	
			              se (poderUsado == "Cigarro"){
			              	vidas += 1
			              } senao se (poderUsado == "Bebida"){
			              	se (blanks > 0 e liveRounds > 0){
			              		logico sorteio = u.sorteia(1, 2) == 1
			              		se (sorteio == verdadeiro){
			              			blanks -= 1
			              			escreva("Foi descartado um blank.")
			              		} senao {
			              			liveRounds -= 1
			              			escreva("Foi descartado um live round.")
			              		}
			              	} senao {
			              		se(liveRounds > 0){
			              			liveRounds -= 1	
			              			escreva("Foi descartado um live round.")
			              		} senao {
			              			blanks -= 1	
			              			escreva("Foi descartado um blank.")
			              		}
			              	}
			              }
			              leia(pause)
			            }
					}
					} senao {
						limpa()
						escreva("Round ", round, "\n")
						escreva("Vez do inimigo.")
						escreva("\n ")
						escreva("\nBlanks: ", blanks)
						escreva("\nLive Rounds: ", liveRounds)
						escreva("\n ")
						escreva("\nSuas vidas: ", vidas)
						escreva("\nVidas do inimigo: ", evidas)
						escreva("\n ")
						leia(pause)
						limpa()
	
						se (liveRounds >= blanks) {
							decisao = 2	
						} senao {
							decisao = 1	
						}

						para (inteiro i = 0; i < 5; i++){
							se (epoder[i] == "Cigarro"){
								epoder[i] = "nenhum"
								evidas += 1
								escreva("O inimigo usou um cigarro.")
								leia(pause)
							}
						}
						
          				poderUsado = "nenhum"
						escolha (decisao){
							caso 1:
								evidas += valorCartucho
								escreva("Ele atirou em si mesmo.")
								se (valorCartucho == -1){
									escreva("\nO cartucho era um Live Round.")
									escreva("\nVidas do inimigo: ", evidas)
									se (evidas <= 0){
										escreva("\nO inimigo morreu.")	
									}
									vez = verdadeiro
									liveRounds -= 1
								} senao {
									escreva("\nO cartucho era um Blank.")
									escreva("\nVidas do inimigo: ", evidas)
									blanks -= 1
								}
							pare
							
							caso 2:
								vidas += valorCartucho
								escreva("O inimigo atirou em você.")
								se (valorCartucho == -1){
									escreva("\nO cartucho era um Live Round.")
									escreva("\nSuas vidas: ", vidas)
									se (evidas <= 0){
										escreva("\nVocê morreu.")	
									}
									liveRounds -= 1
								} senao {
									escreva("\nO cartucho era um Blank.")
									escreva("\nSuas vidas: ", vidas)
									vez = verdadeiro
									blanks -= 1
								}
							pare
						}
					leia(pause)
					}
				}
			}
		}	
		escreva("Fim do Round ", round)
		escreva("\nFim do jogo.")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 7563; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */