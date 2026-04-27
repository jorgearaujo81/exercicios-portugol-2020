//Algoritmo para calcular o IPVA em São Paulo
programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		//entradas
		inteiro codigo
		real valor, ipva, governo, municipio, fundeb
		cadeia resposta
		
		escreva("Verifique abaixo o código correspondente à categoria do seu veículo:\n")
		escreva("\nCÓDIGO	--------------------	CATEGORIA       \n")
		escreva("  1         -      		caminhões\n\n")
		escreva("                   		ônibus e micro-ônibus; caminhonetes de cabine simples; motocicletas,\n")
		escreva("  2         -      		ciclomotores, motonetas, triciclos e quadriciclos; máquinas de terraplenagem,\n")
		escreva("                   		empilhadeiras, guindastes, locomotivas, tratores e similares.\n\n")
		escreva("  3         -     		veículos com motores a etanol, gás natural veicular (GNV) e elétricos ou híbridos\n\n")
		escreva("  4         -      		veículos (modelos flex)\n\n")
		escreva("\nDigite o código: ")
		leia(codigo)
		limpa()
		escreva("Qual o valor do veículo na tabela FIPE? R$ ")
		leia(valor)
		

		//processamento
		se (codigo == 1){
			ipva = mat.arredondar(valor * 0.015,2)
			governo = mat.arredondar(ipva * 0.4,2)
			municipio = governo
			fundeb = mat.arredondar(ipva * 0.2,2)

			//saída
			escreva("\nO valor do IPVA será de R$ ", ipva, " sendo que, R$ ", governo, " vai para o Governo do Estado, R$ ",municipio, " para o município e R$ ", fundeb, " para o FUNDEB.\n")

		//processamento
		}senao se(codigo == 2){
			ipva = mat.arredondar(valor * 0.02,2)
			governo = mat.arredondar(ipva * 0.4,2)
			municipio = governo
			fundeb = mat.arredondar(ipva * 0.2,2)

			//saída
			escreva("\nO valor do IPVA será de R$ ", ipva, " sendo que, R$ ", governo, " vai para o Governo do Estado, R$ ",municipio, " para o município e R$ ", fundeb, " para o FUNDEB.\n")

		//processamento
		}senao se(codigo == 3){

			//saída
			escreva("\nO veículo é registrado na capital? S/N ")

			//entrada
			leia(resposta)

			//processamento
			se (resposta == "s" ou resposta == "S"){
				ipva = mat.arredondar((valor * 0.03)/2,2)
				governo = mat.arredondar(ipva * 0.4,2)
				municipio = governo
				fundeb = mat.arredondar(ipva * 0.2,2)

				//saída
				escreva("\nComo você registrou o veículo na captal, você pode solicitar 50% do valor pago.\n")
				escreva("O valor do IPVA será de R$ ", ipva, " sendo que, R$ ", governo, " vai para o Governo do Estado, R$ ",municipio, " para o município e R$ ", fundeb, " para o FUNDEB.\n")
			
			//processamento
			}senao {
				ipva = mat.arredondar(valor * 0.03,2)
				governo = mat.arredondar(ipva * 0.4,2)
				municipio = governo
				fundeb = mat.arredondar(ipva * 0.2,2)

				//saída
				escreva("\nO valor do IPVA será de R$ ", ipva, " sendo que, R$ ", governo, " vai para o Governo do Estado, R$ ",municipio, " é para o município e R$ ", fundeb, " para o FUNDEB.\n")
				
			}
					
		//processamento
		}senao se(codigo == 4){
			
			ipva = mat.arredondar(valor * 0.04,2)
			governo = mat.arredondar(ipva * 0.4,2)
			municipio = governo
			fundeb = mat.arredondar(ipva * 0.2,2)

			//saída
			escreva("\nO valor do IPVA é R$ ", ipva, " sendo que, R$ ", governo, " vai para o Governo do Estado, R$ ",municipio, " para o município e R$ ", fundeb, " para o FUNDEB.\n")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2851; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */