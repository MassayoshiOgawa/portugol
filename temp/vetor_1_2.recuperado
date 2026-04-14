programa
{
	inclua biblioteca Tipos --> tp
	inclua biblioteca Texto --> tx
	inclua biblioteca Util --> ut
	
	cadeia familia1[5]
	cadeia familia2[5]
	cadeia familia3[5]
	cadeia familia4[5]

	funcao atribuir(inteiro familia, cadeia info, inteiro lugar){
		se(familia == 1){
			familia1[lugar] = info
		}
		se(familia == 2){
			familia2[lugar] = info
		}
		se(familia == 3){
			familia3[lugar] = info
		}
		se(familia == 4){
			familia4[lugar] = info
		}
	}
	
	funcao inicio(){
		cadeia choice
		cadeia info
		logico encerrar = falso
		cadeia pause

		para(inteiro familia = 1; familia <= 4; familia++){
			limpa()
			escreva("Agora, insira o as informações da família N°", familia)
			escreva("\nInsira o N° do apartamento em que moram: ")
			leia(info)
			atribuir(familia, info, 1)
			escreva("Insira o sobrenome da família: ")
			leia(info)
			atribuir(familia, info, 2)
			escreva("Quantidade de moradores: ")
			leia(info)
			atribuir(familia, info, 3)
			escreva("Renda da família: ")
			leia(info)
			atribuir(familia, info, 4)
		}

		enquanto(encerrar == falso){
			limpa()
			escreva("Condomínio Studiare Molto\n")
			escreva(" \n")
			escreva("Digite o número do apartamento para pesquisar:")
			leia(choice)
			se(familia1[1] == choice){
				escreva("Informações da família 1: \n")
				escreva("Número do apartamento em que moram: ", familia1[1])
				escreva("\nSobrenome: ", familia1[2])
				escreva("\nRenda total: ", familia1[3])
				inteiro convertRenda = tp.cadeia_para_inteiro(familia1[4], 10)
				inteiro convertMoradores = tp.cadeia_para_inteiro(familia1[3], 10)
				escreva("\nRenda per capita: ", convertRenda/convertMoradores)
				escreva("\nAperte ENTER para continuar.")
				leia(pause)
			}
			se(familia2[2] == choice){
				escreva("Informações da família 2: \n")
				escreva("Número do apartamento em que moram: ", familia2[1])
				escreva("\nSobrenome: ", familia2[2])
				escreva("\nRenda total: ", familia2[3])
				inteiro convertRenda = tp.cadeia_para_inteiro(familia2[4], 10)
				inteiro convertMoradores = tp.cadeia_para_inteiro(familia2[3], 10)
				escreva("\nRenda per capita: ", convertRenda/convertMoradores)
				escreva("\nAperte ENTER para continuar.")
				leia(pause)
			}
			se(familia3[1] == choice){
				escreva("Informações da família 3: \n")
				escreva("Número do apartamento em que moram: ", familia3[1])
				escreva("\nSobrenome: ", familia3[2])
				escreva("\nRenda total: ", familia3[3])
				inteiro convertRenda = tp.cadeia_para_inteiro(familia3[4], 10)
				inteiro convertMoradores = tp.cadeia_para_inteiro(familia3[3], 10)
				escreva("\nRenda per capita: ", convertRenda/convertMoradores)
				escreva("\nAperte ENTER para continuar.")
				leia(pause)
			}
			se(familia4[1] == choice){
				escreva("Informações da família 4: \n")
				escreva("Número do apartamento em que moram: ", familia4[1])
				escreva("\nSobrenome: ", familia4[2])
				escreva("\nRenda total: ", familia4[3])
				inteiro convertRenda = tp.cadeia_para_inteiro(familia4[4], 10)
				inteiro convertMoradores = tp.cadeia_para_inteiro(familia4[3], 10)
				escreva("\nRenda per capita: ", convertRenda/convertMoradores)
				escreva("\nAperte ENTER para continuar.")
				leia(pause)
			}
			limpa()
			escreva("Deseja sair? [S/N]")
			leia(info)
			se(info == "S"){
				encerrar = verdadeiro
			}
			}
		}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1716; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */