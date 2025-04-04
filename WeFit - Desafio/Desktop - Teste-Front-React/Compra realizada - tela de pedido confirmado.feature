encoding: UTF-8
#language: pt


Funcionalidade: Finalização da Compra

  Cenário: Usuário finaliza a compra com sucesso
    Dado que o usuário tem itens adicionados ao carrinho
    E o usuário acessa o carrinho 
    Quando confirma a compra
    Então ele deve ser redirecionado para a tela de confirmação de pagamento
    E a mensagem "Compra realizada com sucesso!" deve ser exibida
    E o carrinho deve ser esvaziado

  Cenário: Usuário tenta finalizar a compra sem itens no carrinho
    Dado que o usuário acessa o carrinho sem itens adicionados
    Quando ele tenta prosseguir para a finalização da compra
    Então uma mensagem de erro deve ser exibida informando que não há itens no carrinho
    E o botão de "Finalizar Compra" deve estar desabilitado

  Cenário: Usuário retorna à página inicial após finalizar a compra
    Dado que o usuário está na tela de confirmação de compra
    Quando ele clica no botão "Voltar"
    Então ele deve ser redirecionado para a página inicial
    E o carrinho deve estar vazio

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
