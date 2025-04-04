encoding: UTF-8
#language: pt


Funcionalidade: Comportamento da página ao falhar no carregamento e exibição do carrinho mobile

  Cenário: O usuário acessa a página, onde os produtos é exibido na tela
    Dado que o usuário acessa a página "https://wefit.testereact.com.br"
    E na tela "HOME" devem ser exibidos corretamente em uma única coluna ou carrossel
      E cada filme deve ter um botão "Adicionar ao Carrinho"
    E o ícone do "CARRINHO" deve estar visível no topo da tela "VAZIO"
    Quando clicar no botão "Adicionar ao Carrinho" 
    Então o filme será selecionado para o carrinho
    E o icone será alterado por uma quantidade de filmes selecionados

  Cenário: O usuário acessa a página, mas o conteúdo não é carregado
    Dado que o usuário acessa a página "https://wefit.testereact.com.br"
    Quando a página não consegue carregar os dados dos filmes
    Então uma mensagem "Parece que não há nada por aqui :(" deve ser exibida na tela
    E um botão "Recarregar página" deve estar disponível

  Cenário: O usuário tenta recarregar a página após erro
    Dado que o usuário acessa a página "https://wefit.testereact.com.br"
    E a página "HOME" esteja com a mensagem de erro "Parece que não há nada por aqui :("
    Quando o usuário clicar no botão "Recarregar página"
    Então a página deve tentar carregar os filmes novamente
    E será disponibilizado na tela, as opções de filme a venda
    E se o erro persistir, a mensagem "Parece que não há nada por aqui :(" deve continuar visível

  Cenário: Adicionar um filme ao carrinho
    Dado que o usuário está na página "https://wefit.testereact.com.br"
    Quando o usuário toca no botão "Adicionar ao Carrinho" de um filme
    Então a quantidade de itens no carrinho deve ser atualizada corretamente
    E o botão deve mudar de cor para indicar que o filme foi adicionado
    E o ícone do carrinho deve refletir a quantidade correta de itens

  Cenário: Adicionar múltiplos filmes ao carrinho
    Dado que o usuário está na página "https://wefit.testereact.com.br"
    Quando o usuário adiciona mais de um filme ao carrinho
    Então a contagem no ícone do carrinho deve refletir a quantidade total de itens adicionados
    E cada filme deve manter sua quantidade corretamente registrada

  Cenário: Filme que não esteja disponível
    Dado que o usuário acessa a página "https://wefit.testereact.com.br"
    E na tela "HOME" devem ser exibidos corretamente em uma única coluna ou carrossel
        E cada filme deve ter um botão "Adicionar ao Carrinho"
        E caso o filme não esteja disponível, o botão "Adicionar ao Carrinho" deve está "DESABILITADO"
    Quando clicar no botão "Adicionar ao Carrinho" que esteja desabilitado
    Então o filme não será selecionado para o carrinho
    E não poderá seguir com a compra daquele item