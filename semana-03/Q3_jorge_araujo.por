//Algoritmo para exibir uma lista de preços
programa
{

	funcao inicio()
	{
		real preco[10]
		inteiro novosPrecos = -1, qtdeProdutos = 10
		
		enquanto (novosPrecos < 0){
			para (inteiro i = 0; i < qtdeProdutos; i++){
			escreva("Informe o valor do ", i+1, "º produto: R$ ")
			leia(preco[i])
			}

			inteiro opcao = -1	
			enquanto (opcao < 0){
				escreva("\nEscolha uma das opções:")
				escreva("\n1 - Exibir os valores dos produtos na ordem crescente.")
				escreva("\n2 - Exibir os valores dos produtos na ordem decrescente.")
				escreva("\n3 - Digitar novamente os valores dos produtos.")
				escreva("\n4 - para sair.")
				escreva("\nOpção: ")
				leia (opcao)
		
				se(opcao == 1){
					 para(inteiro i = 0; i < 9; i++){
						para(inteiro j = 0; j < 9; j++){
							se(preco[j] > preco[j+1]){
								real aux = preco[j]
								preco[j] = preco[j+1]
								preco[j+1] = aux
							}
							
						}
						
					}
					para(inteiro i = 0; i < 10; i++){
						escreva ("R$", preco[i], "\n")
						opcao = -1
					}
					

				}senao se(opcao == 2){
					para(inteiro i = 9; i >= 0; i--){
						para(inteiro j = 0; j < 9; j++){
							se(preco[j] > preco[j+1]){
								real aux = preco[j]
								preco[j] = preco[j+1]
								preco[j+1] = aux
							}
							
						}
						
					}
					para(inteiro i = 9; i >= 0; i--){
						escreva ("R$", preco[i], "\n")
						opcao = -1
					}
					
				
				}senao se (opcao == 3){
					novosPrecos = -1
				
				}senao se(opcao == 4){
					escreva ("\nObrigado por usar nosso programa!\n")
					novosPrecos = 0
				
				}senao se(opcao > 4){
					escreva ("\nEscolha um valor de 1 a 4")
					opcao = -1
					
				}
				
					
			} 
		}
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1328; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */