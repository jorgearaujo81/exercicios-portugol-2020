//Algoritmo para calcular o custo de um carro novo
programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		//entrada
		real custoCarro, custoFabrica
		
		escreva("Informe o custo de Fábrica do carro? R$"),
		leia(custoFabrica)

		//processamento
		custoCarro = mat.arredondar(custoFabrica * (1 + 0.28 + 0.45),2) // calcula o custo do carro novo

		//saída
		escreva("\nO custo de um carro novo para o consumudor será de R$", custoCarro, ".\n")
		
	}
}


		/*há várias formas de se calcular, neste problema, o custo do carro e eu optei pela siplificação do código: 
		 * custoCarro = custoFabrica + custoFabrica * 0.28 + custoFabrica * 0.45
		 * 
		 */
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 185; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */