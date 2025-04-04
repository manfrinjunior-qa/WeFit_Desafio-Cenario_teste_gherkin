encoding: UTF-8
#language: pt

Feature: Fluxo de compra na versão desktop

Funcionalidade: Comportamento da página ao falhar no carregamento e exibição do carrinho

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

  Cenário: O usuário acessa a página e verifica o estado do carrinho
    Dado que o usuário acessa a página "https://wefit.testereact.com.br"
    E a página carrega os filmes disponíveis
    Quando não tiver itens no carrinho
    Então o ícone do carrinho deve indicar "0 itens"

  Cenário: O usuário acessa a página inicial visualizando os filmes disponíveis
    Dado que o usuário acessa a página "https://wefit.testereact.com.br"
    E a página "HOME" carrega os filmes com sucesso
    Então os filmes disponíveis devem ser exibidos com imagem, título e preço
    E cada filme deve ter um botão "Adicionar ao Carrinho"

  Cenário: O usuário acessa a página inicial visualizando alguns filmes indisponíveis
    Dado que o usuário acessa a página "https://wefit.testereact.com.br"
    E a página "HOME" carrega os filmes com sucesso
    E alguns filmes não esteja disponível, automaticamente o botão "Adicionar ao Carrinho" ficarar apagado
    Quando tentar clicar no botão "Adicionar ao Carrinho"
    Então os filmes que esteja indisponíveis, não será adicionado no carrinho

  Cenário: O usuário adiciona um filme ao carrinho
    Dado que o usuário está na página inicial e visualiza um filme disponível
    Quando o usuário clicar no botão "Adicionar ao Carrinho"
    Então o ícone do carrinho no topo da página deve atualizar o número de itens
    E o contador ao lado do botão do filme deve aumentar para refletir a quantidade adicionada

  Cenário: O usuário tenta adicionar um filme ao carrinho várias vezes
    Dado que o usuário está na página inicial
    Quando o usuário clica no botão "Adicionar ao Carrinho" várias vezes no mesmo filme
    Então o contador de itens ao lado do botão deve aumentar corretamente
    E o carrinho deve refletir a quantidade total adicionada

  Cenário: Paginação da listagem de filmes
    Dado que há mais filmes disponíveis do que podem ser exibidos na tela inicial
    Quando o usuário utitlizar o scroll do mouse, poderá visualizar os filmes que estão disponíveis abaixo
    Então novos filmes devem ser carregados
    E exibidos na tela, até chegar a opção de paginação
    E poderá mudar de página, para visualizar novos filmes


