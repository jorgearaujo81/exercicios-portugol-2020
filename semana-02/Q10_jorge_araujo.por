//Algoritmo para calcular as quatro operações de dois números
/*
 * Tabela com os códios das operações
 * Código			Operação
 *    1			Soma
 *    2 			Subtração
 *    3			Multiplicação
 *    4			Divisão
 */
programa
{
	
	funcao inicio()
	{
		//entrada
		real numero1, numero2, resultado
		inteiro codigo
		
		escreva("Digite um número: ")
		leia(numero1)
		escreva("Agora, digite o segundo número: ")
		leia(numero2)
		escreva("Escolha agora o código que correponde a operação matemática que deseja efetuar:\n\n")
		escreva("Código      -     Operação\n")
		escreva("  1         -      SOMA\n")
		escreva("  2         -      SUBTRAÇÂO\n")
		escreva("  3         -      MULTIPLICAÇÂO\n")
		escreva("  4         -      DIVISÂO\n")
		escreva("\nDigite o código: ")
		leia(codigo)
		limpa()

		//processamento
		se(codigo == 1){
			resultado = numero1 + numero2

			//saída
			escreva(numero1, " + ", numero2, " = ", resultado,"\n")			

		//processamento
		}senao se(codigo == 2){
			resultado = numero1 - numero2

			//saída
			escreva(numero1, " - ", numero2, " = ", resultado,"\n")	

		//processamento
		}senao se(codigo == 3){
			resultado = numero1 * numero2

			//saída
			escreva(numero1, " * ", numero2, " = ", resultado,"\n")	

		//processamento
		}senao se(codigo == 4){
			resultado = numero1 / numero2

			//saída
			escreva(numero1, " / ", numero2, " = ", resultado,"\n")	
			
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 285; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */