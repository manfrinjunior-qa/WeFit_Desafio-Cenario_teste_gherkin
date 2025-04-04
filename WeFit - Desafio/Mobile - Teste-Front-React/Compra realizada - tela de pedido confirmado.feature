encoding: UTF-8
#language: pt

Funcionalidade: Compra realizada, pela tela de pedido confirmado

	Cenário: Finalizar a compra com sucesso
	    Dado que o usuário selecionou um método de pagamento
	    Quando o usuário confirma a compra
	    Então uma mensagem "Compra realizada com sucesso!" deve ser exibida
	    E um botão "Voltar" deve estar disponível para redirecionar à página "HOME"

	Cenário: Erro ao finalizar a compra
	    Dado que o usuário selecionou um método de pagamento
	    E esteja faltando algum item obrigatorio*
	    Quando o usuário confirma a compra
	    Então uma mensagem "Erro ao concluir a compra - Preenche as informações obrigatorias" deve ser exibida
	    E poderá seguir somente quando o cliente preencher as informações de pagamento obrigatorias*

	Cenário: Usuário tenta finalizar a compra sem itens no carrinho
		Dado que o usuário acessa a tela "CARRINHO" sem itens adicionados
	    E a mensagem "Seu carrinho está vazio!"
	    E a opção "Voltar para a Home" exibida na tela
	    Quando clicar na opção "Voltar para a Home"
	    Então será direcionado para a tela "HOME"
	    E poderá selecionar os filmes que deseja comprar
	
	Cenário: Enviar e-mail de confirmação após compra (Melhoria necessária)
		Dado que o usuário concluiu uma compra com sucesso  
		Quando a compra for processada  
		Então um e-mail de confirmação deve ser enviado para o e-mail cadastrado  
		E o e-mail deve conter o número do pedido e o resumo da compra
