//Algoritmo para calcular a área de um retângulo
programa
{
	
	funcao inicio()
	{
		//entrada
		real base, altura, area
		
		escreva("Informe o valor da base do retângulo(centímetros): ")
		leia(base)

		escreva("Informe o valor da altura do retângulo(centímetros): ")
		leia(altura)

		//processamento
		area = base * altura //calcula a área

		//saída

		escreva("\nO retângulo possui ", area, "cm2 de área.\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 220; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */