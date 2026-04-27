//Algoritmo para converter  temperatura de °C para °F.
programa
{

	funcao inicio()
	{
		//entrada
		real temperaturaC, temperaturaF
		
		escreva("Informe a temperatura em graus Celsius(°C): ")
		leia(temperaturaC)

		//processamento
		temperaturaF = (9 * temperaturaC + 160) / 5 //fórmula de conversão de °C para °F.

		//saída		
		escreva("\nA temperatura digitada corresponde a ", temperaturaF, "°F.\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 154; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */