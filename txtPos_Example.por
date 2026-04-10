programa
{

	inclua biblioteca Texto --> tx
	inclua biblioteca Tipos --> tp

	inteiro qntEspacos = 40
	inteiro minRows = 19
	inteiro currRows = 0
	inteiro spaceFromBorder = 2
	inteiro quantidade
	inteiro IDpedido
	cadeia feedbackMsg1 = "Bem vindo!"
	cadeia feedbackMsg2 = "Faça seu pedido!"
	cadeia itemsInfo[7][3]
	cadeia pedidos[7]
	cadeia pause
	logico encerrar = falso
	logico qntDesconto = falso
	logico cartaoDesconto = falso
	real avoidintError
	caracter line = '=', sideLine = '|'

	funcao setPrices(){

		para(inteiro i = 1; i <= 6; i++){
			pedidos[i] = "0"
		}
		
		itemsInfo[1][1] = "Hambúrguer"
		itemsInfo[1][2] = tp.real_para_cadeia(15.00)
		itemsInfo[2][1] = "Salada"
		itemsInfo[2][2] = tp.real_para_cadeia(32.20)
		itemsInfo[3][1] = "Pizza"
		itemsInfo[3][2] = tp.real_para_cadeia(31.60)
		itemsInfo[4][1] = "Shawarma"
		itemsInfo[4][2] = tp.real_para_cadeia(07.40)
		itemsInfo[5][1] = "Feijoada"
		itemsInfo[5][2] = tp.real_para_cadeia(32.99)
		itemsInfo[6][1] = "Batatas"
		itemsInfo[6][2] = tp.real_para_cadeia(32.20)
	}

	funcao back2Default(){
		currRows = 0
		feedbackMsg1 = "Bem vindo!"
		feedbackMsg2 = "Faça seu pedido!"
	}

	funcao txMid(cadeia text){
		inteiro qntChar = tx.numero_caracteres(text)
		inteiro numSpaces = (qntEspacos - qntChar)/2
		escreva(sideLine)
		para(inteiro i = 1; i <= numSpaces; i++){
			escreva(" ")
		}
		escreva(text)
		para(inteiro i = 1; i <= numSpaces; i++){
			escreva(" ")
		}
		escreva(" ")
		se(qntChar % 2 == 0 e qntEspacos % 2 != 0){
			escreva(" ")
		}
		se(qntChar % 2 != 0 e qntEspacos % 2 == 0){
			escreva(" ")
		}
		escreva(sideLine, "\n")
		currRows += 1
	}

	funcao txLft(cadeia text){
		inteiro qntChar = tx.numero_caracteres(text)
		inteiro numSpaces
		escreva(sideLine)
		para(inteiro i = 1; i <= spaceFromBorder; i++){
			escreva(" ")
		}
		escreva(text)
		para(inteiro i = 0; i <= (qntEspacos - qntChar - spaceFromBorder); i++){
			escreva(" ")	
		}
		escreva(sideLine, "\n")
		currRows += 1
	}

	funcao txRght(cadeia text){
		inteiro qntChar = tx.numero_caracteres(text)
		inteiro numSpaces
		escreva(sideLine)
		para(inteiro i = 0; i <= (qntEspacos - qntChar - spaceFromBorder); i++){
			escreva(" ")	
		}
		escreva(text)
		para(inteiro i = 1; i <= spaceFromBorder; i++){
			escreva(" ")	
		}
		escreva(sideLine, "\n")
		currRows += 1
	}

	funcao txLine(){
		para(inteiro i = 1; i <= (qntEspacos + 3); i++){
			escreva(line)
		}
		escreva("\n")
		currRows += 1
	}

	funcao txRmainRows(){
		se (currRows != minRows){
			enquanto(currRows < (minRows - 1)){
				txMid(" ")
			}
		}
	}
	
	funcao inicio(){
		setPrices()
		enquanto(encerrar == falso){
			limpa()
			txLine()		
			txMid("MENU - Lanchonete")
			txMid(" ")
			txMid(feedbackMsg1)
			txMid(feedbackMsg2)
			txMid(" ")
			txMid("[1] Hambúrguer - Valor: R$15.00")
			txMid("[2] Salada     - Valor: R$32.20")
			txMid("[3] Pizza      - Valor: R$31.60")
			txMid("[4] Shawarma   - Valor: R$07.40")
			txMid("[5] Feijoada   - Valor: R$44.95")
			txMid("[6] Batatas    - Valor: R$23.20")
			txMid(" ")
			txLft("Ao comprar 5 ou mais itens")
			txLft("será concedido um desconto")
			txLft("de 10% no valor!")
			txMid(" ")
			txRght("© Direitos reservados.")
			txRmainRows()
			txLine()
			
			escreva("Digite o N° do pedido: ")
			leia(avoidintError)
			IDpedido = tp.real_para_inteiro(avoidintError)
			
			escreva("Digite a quantidade desejada: ")
			leia(avoidintError)
			quantidade = tp.real_para_inteiro(avoidintError)

			se(quantidade <= 0){
				feedbackMsg1 = "ERRO:"
				feedbackMsg2 = "Quantidade inválida."
				inicio()		
			}
			back2Default()
			se(IDpedido >= 1 e IDpedido <= 6){
				inteiro itemQnt = tp.cadeia_para_inteiro(pedidos[IDpedido], 10)
				pedidos[IDpedido] = tp.inteiro_para_cadeia(itemQnt + quantidade, 10)
			} senao {
				feedbackMsg1 = "ERRO:"
				feedbackMsg2 = "Pedido Não encontrado."
				inicio()
			}
			logico prosseguir = falso
			feedbackMsg1 = "Quase lá!"
			feedbackMsg2 = "Siga as instruções."
			enquanto(prosseguir == falso){
				back2Default()
				limpa()
				txLine()
				txMid("Menu - Opções")
				txMid(" ")
				txMid(feedbackMsg1)
				txMid(feedbackMsg2)
				txMid(" ")
				txMid("Insira a opção desejada:")
				txMid(" ")
				txMid("[1] Pedir mais  ")
				txMid("[2] Ver carrinho")
				txMid("[3] Comprar     ")
				txRmainRows()
				txLine()
				leia(IDpedido)
				limpa()
				escolha(IDpedido){
					caso 1:
						prosseguir = verdadeiro
						pare
					caso 2:
						feedbackMsg1 = "Quase lá!"
						feedbackMsg2 = "Siga as instruções."
						back2Default()
						txLine()
						txMid("Carrinho")
						txMid(" ")
						txMid("Itens no seu carrinho: ")
						txMid(" ")
						cadeia pedidosJaInseridos[7]
						para(inteiro i = 1; i <= 6; i++){
							para(inteiro j = 1; j <= 6; j++){
								se(pedidos[j] != "0" e pedidosJaInseridos[j] != itemsInfo[j][1]){
									real qntConvertido = tp.cadeia_para_real(pedidos[j])
									real infoConvertido = tp.cadeia_para_real(itemsInfo[j][2])
									real calc = qntConvertido * infoConvertido
									cadeia msg = ("[" + i + "] " + itemsInfo[j][1] + " R$" + calc)
									txLft(msg)
									pedidosJaInseridos[j] = itemsInfo[j][1]
									pare
								}
							}
						}
						txMid(" ")
						txMid("Pressione ENTER")
						txMid("para continuar.")
						txRmainRows()
						txLine()
						leia(pause)
						pare
					caso 3:
						prosseguir = verdadeiro
						encerrar = verdadeiro
						pare
					caso contrario:
						feedbackMsg1 = "ERRO:"
						feedbackMsg2 = "Insira uma opção válida."
						pare
				} // Escolha IDpedido
			} // Enquanto prosseguir == falso
		} // Enquanto encerrar == falso (Parte de seleçao de itens)
		encerrar = falso
		back2Default()
		feedbackMsg1 = "Faze do pagamento."
		enquanto(encerrar == falso){
			limpa()
			txLine()
			txMid("Pagamento - Lanchonete")
			txMid(feedbackMsg1)
			real valorCompra = 0.0
			real maxQnt = 0.0
			para(inteiro i = 1; i <= 6; i++){
				real qntConvert = tp.cadeia_para_real(pedidos[i])
				maxQnt += qntConvert
				real precoConvert = tp.cadeia_para_real(itemsInfo[i][2])
				valorCompra += qntConvert * precoConvert
			}
			se(maxQnt >= 5){
				qntDesconto = verdadeiro
			}
			cadeia msg
			msg = "Total a pagar: R$" + valorCompra
			txMid(msg)
			txMid(" ")
			txMid("Escolha a forma de pagamento:")
			txMid(" ")
			txMid("[1] Cartão de Débito ")
			txMid("[2] Cartão de Crédito")
			txMid("[3] Pix              ")
			txMid("[4] Dinheiro         ")
			txMid(" ")
			txLft("Pagar usando o cartão")
			txLft("concede um desconto de")
			txLft("15% no valor total")
			txLft("da compra!")
			txMid(" ")
			txRght("© Direitos reservados.")
			txRmainRows()
			txLine()
			leia(avoidintError)
			IDpedido = tp.real_para_inteiro(avoidintError)
			back2Default()
			se(IDpedido >= 1 e IDpedido <= 4){
				encerrar = verdadeiro	
			} senao {
				feedbackMsg1 = "ERRO: Opção inválida."
			}
		} // Enquanto encerrar == falso (Parte de pagamento)
		escolha(IDpedido){
			caso 1:
			caso 2:
				cartaoDesconto = verdadeiro
				pare
		}
	} // Func Inicio
} /*Programa*/
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 5798; 
 * @DOBRAMENTO-CODIGO = [43, 49, 71, 86, 101, 109];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */