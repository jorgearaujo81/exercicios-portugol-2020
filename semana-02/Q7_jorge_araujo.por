//Algoritmo para calcular IMC
/*
 * 			Tabela de IMC
 *  IMC em adultos		Condição
 *  abaixo de 18.5		abaixo do peso
 *  entre 18.5 e 25	peso normal
 *  entre 25 e 30		acima do peso
 *  acima de 30		obeso
 */
programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		//entradas
		real imc, peso, altura
		
		escreva("Informe seu peso: ")
		leia(peso)
		escreva("Informe sua altura: ")
		leia(altura)
		limpa()

		//processamento
		imc = mat.arredondar(peso / (altura * altura), 2)

		se(imc <= 18.5){
			
			//saída
			escreva("Seu IMC é ", imc, ".\nVocê está ABAIXO DO PESO segundo os critérios da OMS.\n")

		//processamento
		}senao se((imc > 18.5) e (imc <= 25)){

			//saída
			escreva("Seu IMC é ", imc, ".\nVocê está no PESO NORMAL segundo os critérios da OMS.\n")

		//processamento
		}senao se((imc > 25) e (imc <= 30)){

			//saída
			escreva("Seu IMC é ", imc, ".\nVocê está ACIMA DO PESO segundo os critérios da OMS.\n")

		//processamento
		}senao {

			//saída
			escreva("Seu IMC é ", imc, ".\nVocê está OBESO segundo os critérios da OMS.\n")
		}

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1016; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */