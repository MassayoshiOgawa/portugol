programa
{
	
	funcao inicio()
	{
		inteiro ex
		escreva("Digite qual exercício você deseja consultar: \n")
		escreva("[1] Números pares\n")
		escreva("[2] Shows internacionais\n")
		escreva("[3] Brinde via sorteio\n")
		escreva("[4] Salário bruto em 6 meses 10\n")
		escreva("[5] Soma de dois valores diferentes\n")
		escreva("[6] Soma de números pares de 100 a 200\n")
		escreva("[7] 10 números. Exibir quantos pares + soma\n")
		escreva("[8] Equipe jovem, adulta ou idosa\n")
		escreva("[9] Folha de pagamento | Masculino e Feminino\n")
		leia(ex)
		escolha(ex){
			caso 1:
				inteiro end, start
				inteiro totalSum = 0
				escreva("Digite o número de partida:")
				leia(start)
				escreva("Digite o número de finalização:")
				leia(end)
				para(inteiro i = start; i <= end; i++){
					se(i % 2 == 0){
						escreva("O número ", i, " é par!\n")
						totalSum += i
					}
				}
				escreva("E a soma dos números pares ficou: ", totalSum)
				pare
			caso 2:
				inteiro podeEntrar = 0
				inteiro idade
				para(inteiro i = 1; i <= 10; i++){
					escreva("Digite sua idade:")
					leia(idade)
					se(idade >= 18){
						podeEntrar += 1
					}
				}
				escreva("Pessoas que podem entrar: ", podeEntrar, "\n")
				escreva("Pessoas que não podem entrar: ", 10 - podeEntrar)
				pare
			caso 3:
				inteiro chances = 5
				inteiro randNum = sorteia(1, 10)
				inteiro try
				para(chances; chances >= 1; chances--){
					escreva("Digite um número de 1 a 10\n")
					leia(try)
					se(try == randNum){
						escreva("PARABÉNS! Você ganhou o brinde!\n")
						pare
					} senao {
						escreva("Que pena. Infelizmente você não acertou.\n")						
					}
				}
				pare
			caso 4:
				real bruto = 0.0
				real gastos = 0.0
				real aux
				para(inteiro i = 1; i <= 6; i++){
					escreva("Digite o dinheiro bruto da empresa no mês ",i,":")
					leia(aux)
					bruto += aux
					escreva("Digite os gastos nesse mês ",i,":")
					leia(aux)
					gastos += aux
				}
				escreva("Salário bruto: ", bruto)
				escreva("Gastos: ", gastos)
				escreva("Saldo: ", bruto - gastos)
				se(bruto - gastos == 0){
					escreva("Não houve lucro nem prejuízo.")
				} senao se(bruto - gastos > 0) {
					escreva("Houve lucro de R$:", bruto - gastos)
				} senao {
					escreva("Houve um prejuízo de R$:", bruto - gastos)	
				}
				pare
			caso 5:
				inteiro fim
				inteiro a1 = 0, a2 = 1, a3 = 1
				escreva("Quantas vezes repetir:")
				leia(fim)
				para(inteiro i = 1; i<=fim; i++){
					escreva(a1, " + ", a2, " = ", a3, "\n")
					a1 = a2
					a2 = a3
					a3 = a1 + a2
				}
				pare
			caso 6:
				inteiro total = 0
				para(inteiro i = 100; i <= 200; i++){
					se(i % 2 == 0){
						total += i
					}
				}
				escreva("Soma dos números pares entre 100 e 200 é: ", total)
				pare
			caso 7:
				inteiro par = 0, numff, soma = 0
				para(inteiro i = 1; i <= 10; i++){
					escreva("Digite um número: ")
					leia(numff)
					se(numff % 2 == 0){
						soma += numff
						par += 1
					}
				}
				escreva("\nNúmeros pares: ", par)
				escreva("\nNúmero ímpares: ", 10 - par)
				escreva("\nSoma de todos os números: ", soma)
				pare
			caso 8:
				inteiro idades = 0, auxs
				para(inteiro i = 1; i <= 5; i++){
					escreva("Digite a idade do ", i, "° funcionário:")
					leia(auxs)
					idades += auxs
				}
				idades /= 5
				escreva("Equipe: ")
				se(idades >= 0 e idades <= 25){
					escreva("Jovem")
				} senao se(idades > 25 e idades <= 60){
					escreva("Adulta")					
				} senao{
					escreva("Idosa")	
				}
				pare
			caso 9:
				cadeia nome
				caracter genero
				real mSalario = 0.0
				real fSalario = 0.0
				real auxS
				real salarioBruto = 0.0
				inteiro h = 0, m = 0
				para(inteiro i = 1; i<= 5; i++){
					escreva("Digite o nome:")
					leia(nome)
					escreva("Gênero - Masculino ou Feminino [M/S]")
					leia(genero)
					escreva("Digite o salário:")
					leia(auxS)
					se(genero == 'M'){
						mSalario += auxS
						h += 1
					} senao{
						fSalario += auxS
						m += 1	
					}
					salarioBruto += auxS
				}
				escreva("Média dos salários masculinos: ", mSalario / h)
				escreva("\nMédia dos salários femininos: ", fSalario / m)
				escreva("\nSalário bruto: ", salarioBruto)
				pare
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4045; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */