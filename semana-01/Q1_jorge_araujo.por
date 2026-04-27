//Algoritmo para calcular o salário de um vendedor com comissão.
programa
{
	
	funcao inicio()
	{
		//entrada
		real salarioFixo, totalDeVendas, salarioFinal
		 		
		escreva("Informe o valor do salário fixo mensal: R$")
		leia(salarioFixo)
		
		escreva("Informe o valor do total de vendas realizadas no mês: R$")
		leia(totalDeVendas)
		
		//processamento
		salarioFinal = salarioFixo + totalDeVendas * 0.15 //calcula a comissão de 15%
		
		//saída
		escreva("\nO salário fixo do vendedor é de R$", salarioFixo, ", o seu salário final do mês é de R$", salarioFinal,".\n")

		

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 575; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */