//Algoritmo para calcular consumo médio de um automóvel
programa
{
	
	funcao inicio()
	{
		//entrada
		real distanciaTotal, combustivelTotal, consumoMedio
		
		escreva("Informe quantos quilômeteros percorreu: ")
		leia(distanciaTotal)

		escreva("Informe quantos litros de combustível foram gastos: ")
		leia(combustivelTotal)

		//processamento
		consumoMedio = distanciaTotal / combustivelTotal //calcula o consumo do automóvel

		//saída
		escreva("\nO consumo médio foi de ", consumoMedio, "KM/L.\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 208; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */