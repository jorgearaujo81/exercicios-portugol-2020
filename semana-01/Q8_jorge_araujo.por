//Algoritmo para calcular a média ponderada de um aluno
programa
{
	
	funcao inicio()
	{
		//entrada
		real nota1, nota2, nota3, media
		
		escreva("Informe a nota da 1ª avaliação: ")
		leia(nota1)
		escreva("Informe a nota da 2ª avaliação: ")
		leia(nota2)
		escreva("Informe a nota da 3ª avaliação: ")
		leia(nota3)

		//processamento
		media = (nota1 * 2 + nota2 * 3 + nota3 * 5) / 10 //calcula a média ponderada de três notas

		//saída
		escreva("\nA média do aluno foi: ", media, ".\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 280; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */