//Algoritmo para consultar Auxílio Emergencial
programa {
	funcao inicio() {

		inteiro novaConsulta = 0, idade
		real valorBeneficio = 0.0
		
		escreva("Bem-Vindo ao sistema de consulta ao benefício Auxílio Emergencial do Governo Federal!\n")
        
        	enquanto (novaConsulta == 0){
        		escreva("1-Para saber se tem direito ao benefício, informe a idade:\n")    
            	leia(idade)
            	
            	se (idade < 18){
            		escreva("ATENÇÃO: Você não possui idade mínima para receber o Auxílio.\n")

            	}senao {
            		inteiro empregoInformal = -1

            		enquanto(empregoInformal < 0){
            			escreva("\n2-Atualmente, trabalha como autônomo com renda informal e está inscrito no Cadastro Único (CadÚnico)?\n")
		               escreva("0 - Sim ou 1 - Não: ")
		               leia(empregoInformal)
		                    
		               se (empregoInformal >= 2){
		               	escreva("Escolha entre 0 ou 1.\n")
                        		empregoInformal = -1

                        	}senao se(empregoInformal == 1){
                        		escreva("ATENÇÃO: Para receber o benefício, é preciso que a pessoa seja autônomo com renda informal e estar cadastrado no CadÚnico.\n")

                        	}senao {
                        		inteiro beneficiario = -1
                        		
                        		enquanto (beneficiario < 0){
                        			escreva("\n3-Está recebendo algum benefício previdenciário/assitencial, seguro-desemprego ou de algum programa de\n")
		                         escreva("tranferência de renda federal que não seja o Bolsa Família?\n")
		                         escreva("0 - Sim ou 1 - Não: ")
		                         leia(beneficiario)

		                         se (beneficiario >= 2){
		                         	escreva("Escolha entre 0 ou 1.\n")
		                         	beneficiario = -1
		                         	
                            		}senao se(beneficiario == 0){
                            			escreva("ATENÇÃO: O benefício do Auxílio Emergecnial não é cumulativo com outros, exceto o Bolsa-Família.\n")
                            		
                            		}senao{
                            			inteiro rendaFamiliar = -1
                            			
		                              enquanto (rendaFamiliar < 0){
		                              	escreva("\n4-Possui renda familiar mensal percapta de R$ 522,50 ou renda total de até R$ 3135.00?\n")
		                                   escreva("0 - Sim ou 1 - Não: ")
		                                   leia(rendaFamiliar)
		                                   
		                                   se (rendaFamiliar >= 2){
		                                   	escreva("Escolha entre 0 ou 1.\n")
		                                        rendaFamiliar = -1
		                                   
		                                   }senao se(rendaFamiliar == 1){
		                                   	escreva("ATENÇÃO: Para receber o benefício é necessário que a renda familiar obedeça aos critérios.\n")

		                                   }senao{
		                                   	inteiro atividade = -1

		                                   	enquanto (atividade < 0){
		                                   		
		                                            	escreva("\n5-É microempreendedor individual (MEI) ou contribuinte individual/facultativo do Regime Geral de previdência Social (RPRS)\n")
		                                            	escreva("0 - Sim ou 1 - Não: ")
		                                            	leia(atividade)

		                                            	se (atividade >= 2){
		                                            		escreva("Escolha entre 0 ou 1.\n")
                                                			atividade = -1
                                            
                                            			}senao se(atividade == 1){
                                            				escreva("ATENÇÃO: O benefício só poderá ser concedido a microempreendendores, contribuintes do RPRS ou desempregados.\n")
                                            
                                            			}senao se(atividade == 0){
                                            				inteiro mulher = -1

                                            				enquanto(mulher < 0){
                                            					escreva("\n6-O único responsável pela despesa da casa é mulher?")
                                                    			escreva("\n0 - Sim ou 1 - Não: ")
                                                    			leia(mulher)

                                                    			se (mulher >= 2){
                                                    				escreva("Escolha entre 0 ou 1.\n")
                                                    				mulher = -1

                                                    			}senao se(mulher == 1){
                                                    				valorBeneficio = 600.00
                                                    			
                                                    			}senao{
                                                    				valorBeneficio = 1200.00
                                                    			
                                                    			}escreva("\nPARABÉNS! Você foi contemplado e receberá R$ ", valorBeneficio, "\n")
                                                    			
                                                		}
										}
									}
								}
							}
						}
					}
				}
			}
		}
		inteiro avaliar = 1
		enquanto(avaliar > 0){
			escreva("\nDeseja avaliar outra pessoa?\n")
               escreva("0 - Sim ou 1 - Não: ")
               leia(novaConsulta)
               
               se (novaConsulta > 1){
               	avaliar = 1
               	
               }senao{
               	avaliar = 0
               }
            }
        }escreva("\nObrigado por utilizar nosso sistema. Até a próxima consulta!\n")
    } 
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 5696; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */