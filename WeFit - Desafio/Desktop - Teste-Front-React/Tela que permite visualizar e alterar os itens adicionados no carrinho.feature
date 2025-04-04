encoding: UTF-8
#language: pt


Funcionalidade: Seleção de um filme e atualização do carrinho

  Cenário: O usuário verifica o resumo do carrinho
    Dado que o usuário adicionou filmes ao carrinho
    Quando o usuário clica no ícone "Meu Carrinho"
    Então deve visualizar um resumo com os filmes adicionados, quantidades e preços
    E o valor total da compra deve ser exibido corretamente

  Cenário: O usuário selecionar a quantidade de um filmes que deseja comprar
    Dado que o usuário acessa a página "https://wefit.testereact.com.br"
    E a tela "CARRINHO" visualizar os filmes que desejar comprar
    E a quantidade que deseja
    Quando clicar no botão "FINALIZAR PEDIDO"
    Então Será direcionar para a tela "PAGAMENTO"
    E poderá seguir com as formas de pagamentos dos filmes
    E finalizar a compra

  Cenário: O usuário adiciona a quantidade (+) de um filme no carrinho
    Dado que o usuário acesse a página "https://wefit.testereact.com.br"
    E na tela "CARRINHO" visualiza os filmes selecionados (Exemplo: "Homem Aranha / Shang-Chi")
    Quando o usuário clicar no botão "+" do filme "Homem Aranha"
    Então o filme deve mudar a quantidade para "2"
    E o número de itens no ícone do carrinho deve ser atualizado corretamente

  Cenário: O usuário adiciona a quantidade (-) de um filme no carrinho
    Dado que o usuário acesse a página "https://wefit.testereact.com.br"
    E na tela "Carrinho" visualiza os filmes selecionados (Exemplo: "Homem Aranha")
    Quando o usuário clicar no botão "-" do filme "Homem Aranha"
    Então o filme deve mudar a quantidade para "0"
    E o número de itens no ícone do carrinho deve ser atualizado corretamente
    E na hora de ser finalizado a compra, não deve contar com o filme que esteja (0)


  Cenário: O usuário remove um filme do carrinho
    Dado que o usuário tem "Homem Aranha" / "Shang-Chi" no carrinho
    Quando o usuário clicar no botão com icone de lixeira
    Então o filme deve ser removido do carrinho de compras
    E na tela "Carrinha" ficar somente os filmes desejado a comprar





