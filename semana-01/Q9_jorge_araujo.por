//Algoritmo para calcular Turnover
programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		//entrada
		real turnover, admitidos, demitidos, totalFuncionarios

		escreva("Informe o nº de admissões: ")
		leia(admitidos)
		escreva("Informe o nº de demissões: ")
		leia(demitidos)
		escreva("Informe o nº de total de funcionários: ")
		leia(totalFuncionarios)

		//processamento
		turnover = mat.arredondar(((admitidos + demitidos) / 2) * 100 / totalFuncionarios, 2) //calcula o turnover
		
		//saída
		escreva("\nO turnover do mês foi de ", turnover, "%.\n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 132; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */