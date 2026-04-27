//Algoritmmo para verificar a categoria do usuário

/* Tabela de referência para as idades
 * 
 *    Idade		Categoria
 * 5 até 7 anos	Infantil A
 * 8 até 10 anos	Infantil B
 * 11 até 13 anos	Juvenil A
 * 14 até 17 anos	Juvenil B
 * Maiores de 18 	Adulto
 */

programa
{
	
	funcao inicio()
	{
		//entrada
		inteiro idade
		
		escreva("Digite sua idade: ")
		leia (idade)
		limpa()

		//processamento
		se (idade < 5){
			
			//saída
			escreva("Você não possui a idade mínima de 5 anos para participar.\n")

		//processamento
		}senao se((idade > 4) e (idade < 8)){

			//saída
			escreva("Você pertence a categoria Infantil A.\n")

		//processamento
		}senao se((idade > 7) e (idade < 11)){

			//saída
			escreva("Você pertence a categoria Infantil B.\n"),

		//processamento
		}senao se((idade > 10) e (idade < 14)){

			//saída
			escreva("Você pertence a categoria Juvenil A.\n"),

		//processamento
		}senao se((idade > 13) e (idade < 18)){

			//saída
			escreva("Você pertence a categoria Juvenil B.\n"),

		//processamento
		}senao {

			//saída
			escreva("Você pertence a categoria Adulto.\n"),
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 420; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */