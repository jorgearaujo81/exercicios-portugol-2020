programa
{
	inclua biblioteca Tipos --> t
	inclua biblioteca Texto --> tx
	inclua biblioteca Arquivos -->arq
	
	funcao inicio()
	{
		escreva ("**** PETSHOPFUCTURA ****\n")
		menu ()
	}

	funcao menu ()
	{
		inteiro opcao
		
		escreva ("MENU PRINCIPAL\n")
		escreva ("1. Cadastrar Cliente\n")
		escreva ("2. Consultar Cliente\n")
		escreva ("3. Alterar Cliente\n")
		escreva ("4. Excluir Cliente\n")
		escreva ("Digite uma opção: ")
		leia (opcao)
		limpa ()

		escolha (opcao)
		{
			caso 1:
			
			cadastrarCliente()
			escreva ("\nCadastro realizado!\n")
			pare

			caso 2:
			consultarCliente()
			escreva ("\nConsulta finalizada!\n")
			pare

			caso 3:
			alterarCliente()
			escreva ("\nAlteração realizada!\n")
			pare

			caso 4:
			excluirCliente()
			escreva ("\nExclusão realizada!\n")
			pare

			caso contrario:
			escreva ("OPÇÃO INVÁLIDA!!!\nEscolha apenas uma das opções abaixo:\n")
			menu()
		}
		
		retornaMenu()
		
	}
		
	funcao cadastrarCliente ()
	{
		cadeia cpf, nome, endereco, contato, email, mensalista
		
		escreva("MENU CADASTRO\n")
		escreva("Digite o nº de CPF do cliente: ")
		leia(cpf)
		validarCadastro(cpf)
		escreva("Nome completo: ")
		leia (nome)
		cadastroNome(nome)
			
		escreva("Endereço: ")
		leia (endereco)
	
		escreva("Contato: ")
		leia (contato)
	
		escreva("E-mail: ")
		leia (email)
	
		escreva("Mensalista(S/N): ")
		leia (mensalista)

		caixaAlta(endereco, email, mensalista)
		
		gravarDados(cpf, nome, endereco, contato, email, mensalista)
			
	}

	funcao consultarCliente()
	{
		cadeia cpf
		
		escreva("MENU CONSULTA\n")
		escreva("Informe o nº do CPF que deseja consultar: ")
		leia (cpf)
		consulta(cpf)
			
	}

	funcao alterarCliente()
	{	cadeia cpf

		escreva("MENU ALTERAÇÃO\n")
		escreva("Informe o nº do CPF que deseja alterar: ")
		leia(cpf)
		altera(cpf)
		
	}

	funcao excluirCliente()
	{
		cadeia cpf, resposta
		caracter opcao
			
		escreva("MENU EXCLUSÃO\n")
		escreva("Informe o número do CPF que deseja excluir: ")
		leia(cpf)
		
		escreva("Tem certeza que você deseja excluir este cliente? S/N ")
		leia (resposta)
	
		resposta = tx.caixa_alta(resposta)
		opcao = Tipos.cadeia_para_caracter(resposta)

		escolha(opcao)
		{
			caso 'S':
			exclui(cpf)				
			pare

			caso 'N':
			pare

			caso contrario:
			excluirCliente()

			
		}
		
	}

	funcao limiteCaracterNome(cadeia nome)
	{
		inteiro tamanho = tx.numero_caracteres(nome)

		enquanto(tamanho > 30)
		{
			escreva("\nLimite de caracteres excedidos(máx. 30). Tente abreviar o sobrenome!\n")
			tamanho = 0
			cadastroNome(nome)
		}
	}

	funcao gravarDados (cadeia nomeArquivo, cadeia nome, cadeia endereco, cadeia contato, cadeia email, cadeia mensalista)
	{
		nomeArquivo = "./" + nomeArquivo + ".txt"
		
		inteiro caminhoArquivo = arq.abrir_arquivo(nomeArquivo, arq.MODO_ACRESCENTAR)
		
		arq.escrever_linha(nome + " ", caminhoArquivo)
		arq.escrever_linha(endereco + " ", caminhoArquivo)
		arq.escrever_linha(contato + " ", caminhoArquivo)
		arq.escrever_linha(email + " ", caminhoArquivo)
		arq.escrever_linha("Mensalista: "+ mensalista, caminhoArquivo)
		
		arq.fechar_arquivo(caminhoArquivo)
	}

	funcao retornaMenu()
	{	
		cadeia resposta
		caracter letra

		escreva("Deseja retornar ao Menu Inicial? S/N ")
		leia(resposta)
		resposta = Texto.caixa_alta(resposta)
		letra = Tipos.cadeia_para_caracter(resposta)

		
		
		escolha (letra)
		{
			caso 'S':
			menu()
			pare

			caso 'N':
			pare

			caso contrario:
			retornaMenu()
		}
		
	}

	funcao exclui(cadeia cpf)
	{
		cadeia nomeArquivo = "./" + cpf + ".txt"
		inteiro caminhoArquivo = arq.abrir_arquivo(nomeArquivo, arq.MODO_ESCRITA)
		
		arq.escrever_linha("Os dados do cliente foram excluídos.", caminhoArquivo)
		arq.fechar_arquivo(caminhoArquivo)
	}

	funcao cadeia cadastroNome(cadeia nome)
	{	
		
		nome = tx.caixa_alta(nome)
		limiteCaracterNome(nome)
		
		
		retorne nome
	}

	funcao gerarArquivo(cadeia nomeArquivo)
	{
		nomeArquivo = "./" + nomeArquivo + ".txt"
		
		inteiro caminho = arq.abrir_arquivo(nomeArquivo, arq.MODO_ESCRITA)
		
		arq.fechar_arquivo(caminho)
	}

	funcao validarCadastro(cadeia cpf)
	{
		cadeia nomeArquivo = "./" + cpf + ".txt"
		
		se (arq.arquivo_existe(nomeArquivo))
		{
			escreva ("Cliente já possui cadastro! Insira outro nº de CPF.\n\n")
			cadastrarCliente ()
		}
		senao
		{
			gerarArquivo(cpf)
		}
		
	}

	funcao altera(cadeia cpf )
	{	
		cadeia nome, endereco, contato, email, mensalista
		inteiro resposta
			
		cadeia nomeArquivo = "./" + cpf + ".txt"
		inteiro caminhoArquivo = arq.abrir_arquivo(nomeArquivo, arq.MODO_LEITURA)
		
		nome = arq.ler_linha(caminhoArquivo)
		endereco = arq.ler_linha(caminhoArquivo)
		contato = arq.ler_linha(caminhoArquivo)
		email = arq.ler_linha(caminhoArquivo)
		mensalista = arq.ler_linha(caminhoArquivo)
		
		arq.fechar_arquivo(caminhoArquivo)
	
		arq.abrir_arquivo(nomeArquivo, arq.MODO_ESCRITA)
		
		escreva("Escolha qual dado do cliente deseja alterar: \n")
		escreva("1.nome \n2.endereço \n3.contato \n4.e-mail \n5.mensalista \nOpção:")
		leia(resposta)
		
		escolha (resposta)
		{
			caso 1:
			escreva("Digite o nome: ")
			leia (nome) 
			pare
			
			caso 2:
			escreva("Digite o endereço: ")
			leia (endereco)
			pare
			
			caso 3:
			escreva("Digite o contato: ")
			leia (contato)
			pare
			
			caso 4:
			escreva("Digite o email: ")
			leia (email)
			pare
			
			caso 5:
			escreva("Digite o : ")
			leia (mensalista)
			pare

			caso contrario:
			
		}

		arq.escrever_linha(nome + " ", caminhoArquivo)
		arq.escrever_linha(endereco + " ", caminhoArquivo)
		arq.escrever_linha(contato + " ", caminhoArquivo)
		arq.escrever_linha(email + " ", caminhoArquivo)
		arq.escrever_linha("Mensalista: "+ mensalista, caminhoArquivo)
		
		arq.fechar_arquivo(caminhoArquivo)

		cadeia resposta2
		caracter opcao
		
		escreva("Deseja fazer mais alguma alteração neste cliente? S/N")
		leia (resposta2)
	
		resposta2 = tx.caixa_alta(resposta2)
		opcao = Tipos.cadeia_para_caracter(resposta2)

		escolha(opcao)
		{
			caso 'S':
			altera(cpf)				
			pare

			caso contrario:
			cadastrarCliente ()

			
		}
	}

	funcao consulta(cadeia cpf)
	{
		cadeia nome, endereco, contato, email, mensalista
		cadeia nomeArquivo = "./" + cpf + ".txt"
		
		inteiro caminhoArquivo = arq.abrir_arquivo(nomeArquivo, arq.MODO_LEITURA)

		nome = arq.ler_linha(caminhoArquivo)
		endereco = arq.ler_linha(caminhoArquivo)
		contato = arq.ler_linha(caminhoArquivo)
		email = arq.ler_linha(caminhoArquivo)
		mensalista = arq.ler_linha(caminhoArquivo)

		escreva (nome + "\n" + endereco + "\n" + contato + "\n" + email + "\nMensalista: " + mensalista)
		
		arq.fechar_arquivo(caminhoArquivo)
	}

	funcao caixaAlta(cadeia endereco, cadeia email, cadeia mensalista)
	{
		
		endereco = tx.caixa_alta(endereco)
		email = tx.caixa_alta(email)
		mensalista = tx.caixa_alta(mensalista)
		
	}


	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 969; 
 * @DOBRAMENTO-CODIGO = [87, 152, 167, 194, 213, 222];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */