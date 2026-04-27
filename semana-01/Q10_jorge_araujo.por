//Algoritmo para calcular consumo de energia dos aparelhos
programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		//entrada
		real potenciaEquipamento, horas, diasUso, consumoEnerdia, custoEnergia
		
		escreva("Informe a potência do aparelho (w): ")
		leia(potenciaEquipamento)
		escreva("Informe a quantidade de horas usadas no mês: ")
		leia(horas)
		escreva("Informe a número de dias utilizado no mês: ")
		leia(diasUso)

		//processamento
		consumoEnerdia = (potenciaEquipamento * horas * diasUso) / 1000 //calcula o total de consumo de energia de um aparelho
		custoEnergia = mat.arredondar(consumoEnerdia * 0.39, 2) //calcula o valor em R$ do consumo de energia

		//saída
		escreva("\nO conumo de energia mensal foi de ", consumoEnerdia, " kWh.\n")
		escreva("O custo de energia consumida é de R$", custoEnergia, ".\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 812; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */