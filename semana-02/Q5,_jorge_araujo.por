//Algoritmo para verificar a classificação do triângulo
programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		//entradas
		real lado1, lado2, lado3, absoluto1, absoluto2, absoluto3
		
		escreva("Para saber a classificação de um triângulo, forneça três valores correspondentes aos lados do triângulo.")
		
		escreva("\nlado 1:")
		leia(lado1)
		
		escreva("lado 2:")
		leia(lado2)
		
		escreva("lado 3:")
		leia(lado3)

		//processamento
		absoluto1 = mat.valor_absoluto(lado2 - lado3)
		absoluto2 = mat.valor_absoluto(lado1 - lado3)
		absoluto3 = mat.valor_absoluto(lado1 - lado2)

		se(((absoluto1 < lado1) e (lado1 < (lado2 + lado3))) e ((absoluto2 < lado2) e (lado2 < (lado1 + lado2))) e ((absoluto3 < lado3) e (lado3 < (lado1 + lado2)))){
		
		
			se ((lado1 ==  lado2) e (lado1 == lado3)){
				//saída
				escreva("\nAs medidas dos lados formam um TRIÂNGULO EQUILÁTERO.\n")
			
			//processamento
			}senao se (((lado1 ==  lado2) e (lado1 <> lado3)) ou ((lado1 <> lado2) e (lado2 == lado3)) ou ((lado1 ==  lado3) e (lado1 <> lado2))){
				//saída
				escreva("\nAs medidas dos lados formam um TRIÂNGULO ISÓSCELES.\n")

			//processamento
			}senao{
				//saída
				escreva("\nAs medidas dos lados formam um TRIÂNGULO ESCALENO.\n")
			}
		//processamento
		}senao{
			//saída
			escreva("\nNão é possível formar um triângulo com as medidas informadas. Pesquise as condições de existência de um triângulo num livro.\n")
		
		}
			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 396; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */