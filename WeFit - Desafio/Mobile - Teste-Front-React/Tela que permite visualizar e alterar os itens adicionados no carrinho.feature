encoding: UTF-8
#language: pt

Funcionalidade: Tela que permite visualizar os itens adicionados no carrinho

  Cenário: Visualizar o carrinho de compras
    Dado que o usuário acessa a página "https://wefit.testereact.com.br"
    E tenha selecionado os filmes desejados
    E esteja na tela "Carrinho"
    Quando o usuário acessa o carrinho de compras
    Então a lista de filmes adicionados deve ser exibida com suas respectivas quantidade, preços e valor total
    E deve haver um icone (Lixeira) para remover o filme que não deseja
    E um botão (+) para aumentar / (-) para diminuir 
    E o botão "Finalizar Compra" deve estar visível

  Cenário: Remover um filme do carrinho
    Dado que o usuário tem filmes no carrinho
    Quando o usuário toca no icone (LIXEIRA) para remover um filme
    Então o filme deve ser removido da lista
    E o valor total da compra, deve ser atualizado corretamente

  Cenário: Ajustar a quantidade de um filme no carrinho
    Dado que o usuário tem filmes no carrinho
    Quando o usuário aumenta ou reduz a quantidade de um filme
    Então o total da compra deve ser recalculado corretamente
    E a quantidade do filme deve refletir a alteração feita

  Cenário: Finalizar compra
    Dado que o usuário tem filmes no carrinho
    E esteja de acordo com os valores
    Quando o usuário clicar no botão "FINALIZAR PEDIDO"
    Então o usuário será direcionado para a tela de pagamento
    E poderá seguir com as opções de pagamentos

  Cenário: Usuário não encontra a opção de escolha da forma de pagamento (Melhoria necessária)
    Dado que o usuário deseja escolher a forma de pagamento antes de finalizar a compra
    Quando ele chega à etapa final da compra
    Então ele percebe que não há opção para selecionar entre cartão de crédito, débito ou boleto
    E essa funcionalidade deveria ser implementada para melhorar a experiência do usuário

  Cenário: Usuário não encontra a opção de frete (Melhoria necessária)
    Dado que o usuário deseja escolher a forma de envio, antes de finalizar a compra
    Quando ele chega à etapa final da compra
    Então ele percebe que não há opção para selecionar de "Frete"
    E essa funcionalidade deveria ser implementada para melhorar a experiência do usuário

  Cenário: Visualizar perfil do site (Melhoria necessária)
    Dado que o usuário acessa a página "https://wefit.testereact.com.br"
    E já esteja logado no sistema
    Quando acessar a tela de perfil  
    Então deve visualizado seu nome (login)  
    E ao clicar no icone perfil, poderá visualizar as opções (EDITAR/ MINHAS COMPRAS / SAIR) 