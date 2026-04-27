//Algoritmo para verificar se o usuário está dentro do perfil
programa
{
	
	funcao inicio()
	{
		//entradas
		inteiro idade
		real altura
		
		escreva("Informe quantos anos você tem: ")
		leia(idade)
		escreva("Agora, informe sua altura: ")
		leia(altura)

		//processamento
		se (idade >= 24 e idade <= 45 e altura > 1.90){
			//saída
			escreva("\nPERFIL ENCONTRADO\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 39; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */