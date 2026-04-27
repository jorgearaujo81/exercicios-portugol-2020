//Algoritmo para exibir uma lista de números
programa
{
	
	funcao inicio()
	{
		inteiro numero = -1, opcao = -1

		enquanto (numero < 0){
			escreva("Digite um número: ")
			leia(numero)
		}

		enquanto (opcao < 0){
			escreva("\nEscolha uma das opções:")
			escreva("\n1 - para exibir os números ímpares de 0 até ", numero, ".")
			escreva("\n2 - para exibir os números pares de 0 até ", numero, ".")
			escreva("\n3 - para exibir os números de 0 até ", numero, ".")
			escreva("\n4 - para sair.")
			escreva("\nOpção: ")
			leia (opcao)
			
			se(opcao == 1){
				escreva("\nOs números ímpares são: ")
				
				se(numero % 2 == 1){
					para (inteiro i = 0; i < numero; i = i + 2){
						escreva(i+1, " ")
					}
				}
				senao{
					para (inteiro i = 1; i < numero; i = i + 2){
						escreva(i, " ")
					}
					
				}opcao = -1
			}
			senao se(opcao == 2){
				escreva("\nOs números pares são: ")
				se (numero % 2 == 0){				
					para (inteiro i = -2; i < numero; i = i + 2){
						escreva(i+2, " ")
					}
				}
				senao {
					para (inteiro i = 0; i < numero; i = i + 2){
						escreva(i, " ")
					}
					
				}opcao = -1
			}
			senao se (opcao == 3){
				escreva("\nOs números são: ")
				
				para (inteiro i = 0; i <= numero; i++){
					escreva(i, " ")
					opcao = -1
				}
			
			}
			senao se(opcao == 4){
				escreva ("\nObrigado por usar nosso programa!\n")
			
			}
			senao se (opcao > 4){
				escreva("Escolha entre 1 a 4.\n")
				opcao = -1
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1470; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */