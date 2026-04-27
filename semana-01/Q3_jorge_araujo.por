//Algoritmo para calcular as parcelas de uma compra.
programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		//entrada
		inteiro nParcela
		real valorCompra, vParcela 
		
		escreva("Informe o valor do produto que será parcelado: R$")
		leia(valorCompra)

		escreva("Informe o n° de parcelas a dividir no cartão: ")
		leia(nParcela)
		
		//processamento
		vParcela = mat.arredondar(valorCompra / nParcela, 2) //calcula o valor de cada parcela

		//saída
		escreva ("\nO valor da compra, dividido em ", nParcela, " parcelas, ficará em R$", vParcela, ".\n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 577; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */