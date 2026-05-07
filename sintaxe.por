programa
{
	inclua biblioteca Matematica
	inclua biblioteca Tipos
	inclua biblioteca Texto
	inclua biblioteca Util
	
	funcao inteiro funcao_especial(cadeia nome){
		se(nome == "Leandro"){
			retorne 1
		} senao {
			retorne 2
		}
	}
	
	funcao inicio()
	{
		// Algumas funções da biblioteca Matematica:
		/*
		 * arredondar(real, casas)
		 * maior_numero(numeroRealA, numeroRealB)
		 * menor_numero(numeroRealA, numeroRealB)
		 * valor_absoluto(real)
		*/
		// Algumas funções da biblioteca Util:
		/*
		 * sorteia(minimo, maximo) Valores inteiros
		 * aguarde(intervalo) Inteiro
		*/
		// Algumas funções da biblioteca Texto:
		/*
		 * numero_caracteres(cadeia)
		 * caixa_alta(cad)
		 * caixa_baixa(cad)
		*/
		inteiro numero
		leia(numero)
		logico pronto = falso
		caracter resposta = 'S' // bom enfatizar que a variavel caracter precisar estar em aspas simples
		real pi = 3.14
		cadeia nome = "Leandro" // em aspas duplas
		inteiro answer = funcao_especial(nome)
		cadeia matriz[10][12]
		cadeia vetor[10]
		// a estrutura escolha apenas suporta INTEIRO e CARACTER. os outros tipos irão causar erro.
		escolha(numero){
			caso 1:
				escreva("Numero 1")
				pare
			caso 2:
				escreva("Numero 2")
				pare
			caso contrario:
				escreva("O número nn é 1 e nem 2")
				pare
		}
		enquanto(pronto == falso){
			leia(numero)
			se(numero == 1){
				pronto = verdadeiro
			}
		}
		para(inteiro i = 0; i < 10; i++){
			vetor[i] = "A"
			para(inteiro j = 0; j < 12;j++){
				matriz[i][j] = "B"
			}
		}
		// não existe estrutura chamada: "Repita", "Tipo", "Registro". Não use elas porque elas não existem.
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 730; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */