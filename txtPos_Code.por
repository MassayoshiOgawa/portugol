programa
{

	inclua biblioteca Texto --> tx

	inteiro qntEspacos = 40
	inteiro minRows = 16
	inteiro currRows = 0
	inteiro spaceFromBorder = 2
	caracter line = '=', sideLine = '|'

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
		txLine()		
		txMid("MENU - Lanchonete")
		txMid(" ")
		txMid("[1] Hambúrguer - Valor: R$15.00")
		txMid("[2] Salada     - Valor: R$32.20")
		txMid("[3] Pizza      - Valor: R$31.60")
		txMid("[4] Shawarma   - Valor: R$07.40")
		txMid("[5] Feijoada   - Valor: R$44.99")
		txMid("[6] Batatas    - Valor: R$23.20")
		txMid(" ")
		txLft("Ao comprar 5 ou mais itens")
		txLft("será concedido um desconto")
		txLft("de 10% no valor!")
		txMid(" ")
		txRght("© Direitos reservados.")
		txRmainRows()
		txLine()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 179; 
 * @DOBRAMENTO-CODIGO = [11, 33, 48, 63, 71];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */