//Algoritmo para simular de Empréstimo Pessoal
programa {

	inclua biblioteca Matematica --> mat
	funcao inicio() {
		real capital = 0.0
		inteiro prazo, simulador = -1
		
		enquanto(simulador < 0){
			escreva("1. Qual o valor do empréstimo?\nR$ ")
            	leia(capital)
            	escreva("\n2. Qual o prazo do financiamento?(meses)\n")
            	leia(prazo)

            	inteiro banco = -1
            	real taxa = 0.0
            	
            	enquanto(banco < 0){
            		escreva("\n3. Qual o banco que será feito o empréstimo?")
	               escreva("\n1 - Banco do Brasil")
	               escreva("\n2 - Caixa Econômica Federal")
	               escreva("\n3 - Itaú")
	               escreva("\n4 - Santander")
	               escreva("\n5 - Bradesco\n")
	               escreva("Banco nº: ")
	               leia(banco)
                
	               se(banco == 1){
	                    taxa = 3.06

	               }senao se(banco == 2){
	               	taxa = 3.32
	               	 
	               }senao se(banco == 3){
	                    taxa = 3.70
	                      
	               }senao se(banco == 4){
	                    taxa = 4.28 
	               
	               }senao se(banco == 5){
	                    taxa = 4.96
	               
	               }senao se(banco > 5){
	                	escreva("Escolha apenas de 1 a 5.")
	                	banco = -1        
	               }
            	}
            
	          inteiro consignado = -1
	          real txconsignado = 0.0
	          
	          enquanto (consignado < 0){
	          	escreva("\n4. O financiamento será consignado?\n")
	               escreva("0 - Sim ou 1 - Não: ")
	               leia(consignado)
	                
	               se(consignado == 0){
	               	txconsignado = 0.1
	                    
	               }senao se(consignado > 1){
	                	escreva("\nEscolha apenas entre 0 e 1.")
	                	consignado = -1
	               }
	
	            }
	            
	            inteiro correntista = -1
	            real txcorrentista = 0.0
	            
	            enquanto (correntista < 0){
	            	escreva("\n5. É correntista?\n")
		          escreva("0 - Sim ou 1 - Não: ")
		          leia(correntista)
		            
                	se(correntista == 0){
                		txcorrentista = 0.05
                    
                	}senao se(correntista > 1){
	                	escreva("\nEscolha apenas entre 0 e 1.")
	                	correntista = -1
                	}

				real i= 0.0, montante = 0.0, parcela = 0.0, diferenca = 0.0, arredondamento = 0.0
				
                	i = mat.arredondar(taxa - txconsignado - txcorrentista, 2)
            		montante = capital + (capital * i * prazo)/100
            		parcela = mat.arredondar(montante / prazo, 2)
            		diferenca = mat.arredondar(montante - capital, 2)
            
            
            		escreva("\nO valor mensal da parcela é R$ ", parcela)
            		escreva("\nO custo total do empréstimo é de R$ ", montante)
            		escreva("\nO valor a ser pago a mais é de R$ ", diferenca, "\n")

            		inteiro resposta = -1
            		
            		enquanto (resposta < 0){
            			escreva("\n\nDeseja fazer uma nova simulação?\n")
		  			escreva("0 - Sim ou 1 - Não: ")
		  			leia(resposta)

					se (resposta == 0){
		  			simulador = -1
	     	    			     		
	     			}senao se(resposta == 1){
	     				simulador = 1
	     				escreva ("\nObrigado por usar nosso programa!\n")
	     				 
	     			}
	     			senao se(resposta > 2){
	      			escreva("\nEscolha apenas entre 0 e 1.")
	          		resposta = -1
	          		}
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
 * @POSICAO-CURSOR = 3281; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */