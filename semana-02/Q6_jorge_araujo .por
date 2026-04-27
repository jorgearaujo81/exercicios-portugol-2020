//Algoritmo para mostrar o preço de um produto de acordo com as condições de pagamento
/*
 * 
 * Tabela de referência para condição de pagamento
 * 
 *  Código 	Condição de pagamento
 *    1		À vista em dinheiro, recebe 10% de desconto sobre o preço normal.
 *    2		À vista no cartão, recebe 5% de desconto sobre o preço normal
 *    3		Em duas vezes sem juros.
 *    4		Em três vezes com juros. Preço normal com mais 10% de juros.
*/
programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		//entradas
		real precoNormal, precoFinal, parcela
		inteiro codigo

		escreva("Informe o valor do produto: R$ ")
		leia(precoNormal)
		escreva("Escolha agora o código correspondente à forma de pagamento:\n\n")
		escreva("Código      -              Condição de Pagamento\n")
		escreva("  1         -      Para pagamento à vista em dinheiro\n")
		escreva("  2         -      Para pagamento à vista no cartão de crédito\n")
		escreva("  3         -      Para pagamento parcelado no cartão em 2X\n")
		escreva("  4         -      Para pagamento parcelado no cartão em 3X\n")
		escreva("\nDigite o código: ")
		leia(codigo)
		limpa()
		
		//processamento
		se(codigo == 1) {
			precoFinal = precoNormal * 0.90 //preço com desconto de 10%

			//saída
			escreva("Nesta condição de pagamento, o produto fica a R$ ", precoFinal,".\n")			

		//processamento
		}senao se(codigo == 2) {
			precoFinal = precoNormal * 0.95 //preço com desconto de 05%

			//saída
			escreva("Nesta condição de pagamento, o produto fica a R$ ", precoFinal,".\n")	

		//processamento
		}senao se(codigo == 3) {
			precoFinal = precoNormal
			parcela = precoFinal/2 // cacula o valor da parcela

			//saída
			escreva("Nesta condição de pagamento, o produto fica a R$ ", precoFinal, ", parcelado em duas vezes de R$ ", parcela, ".\n" )

		//processamento
		}senao se(codigo == 4){
			precoFinal = precoNormal * 1.1 //preço com juro de 10%
			parcela = mat.arredondar(precoFinal/3, 2) // cacula o valor da parcela

			//saída
			escreva("Nesta condição de pagamento, o produto fica a R$ ", precoFinal," parcelado em três vezes de R$ ", parcela, ".\n")
			
		}
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1842; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */