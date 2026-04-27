//Algoritmo para calcular o percentual de votos brancos, nulos e válidos
programa
{
	
	funcao inicio()
	{
		//entrada
		real votoValido, pvotoBranco, pvotoNulo, pvotoValido, nEleitores, votoBranco, votoNulo
		
		escreva("Informe o número total de eleitores do município: ")
		leia(nEleitores)

		escreva("Informe a quantidade de votos brancos: ")
		leia(votoBranco)

		escreva("Informe a quantidade de votos nulos: ")
		leia(votoNulo)

		votoValido = nEleitores - (votoBranco + votoNulo) //calcula o nº de votos válidos

		//processamento
		pvotoBranco = votoBranco / nEleitores * 100 //calcula percentual de votos brancos
		pvotoNulo = votoNulo / nEleitores * 100 //calcula percentual de votos nulos
		pvotoValido = votoValido /nEleitores * 100 //calcula percentual de votos válidos

		//saída
		escreva("\nSegundo a apuração dos votos:", pvotoBranco, "% corresponde a votos brancos, ")
		escreva(pvotoNulo, "% corresponde a votos nulos e ", pvotoValido, "% corresponde a votos válidos.\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 994; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */