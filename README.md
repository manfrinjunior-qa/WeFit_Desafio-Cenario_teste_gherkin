

# 🛒 WeMovies - Cenários de Teste

Este repositório contém a especificação dos cenários de teste para o e-commerce de filmes **WeMovies**.  
Os cenários foram descritos utilizando **Gherkin**, garantindo clareza na definição dos testes funcionais.

---

## 📌 Estrutura do Repositório

- 📂 **Desktop** → Contém os cenários de teste para a versão web.  
- 📂 **Mobile** → Contém os cenários de teste para a versão mobile.  
- 📸 **Screenshots** → Pasta para armazenar imagens das telas testadas.

---

## 🖥️ Cenário de Teste - Desktop

**Funcionalidade:** Adicionar um filme ao carrinho  
**Descrição:** O usuário pode adicionar um filme ao carrinho e visualizar a quantidade de itens.

```gherkin
Funcionalidade: Comportamento da página ao falhar no carregamento e exibição do carrinho

  Cenário: O usuário acessa a página inicial visualizando os filmes disponíveis
    Dado que o usuário acessa a página "https://wefit.testereact.com.br"
    E a página "HOME" carrega os filmes com sucesso
    Então os filmes disponíveis devem ser exibidos com imagem, título e preço
    E cada filme deve ter um botão "Adicionar ao Carrinho"
```

📸 Imagem do Cenário Testado

![image](https://github.com/user-attachments/assets/9a2bb200-3e2c-4da8-b1cc-6a0a4940a438)

---

## 📱 Cenário de Teste - Mobile

**Funcionalidade:** Finalizar a compra
**Descrição:** O usuário pode concluir a compra e receber uma confirmação.

```gherkin
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
````

📸 Imagem do Cenário Testado

![image](https://github.com/user-attachments/assets/0aa7abf4-07cb-4466-b969-bd5ee378b687)



## 🚀 Melhorias Sugeridas

---

### 🖥️ Melhorias Desktop

- Implementar uma tela de seleção de forma de pagamento, incluindo opções como cartão, PIX e boleto

- Adicionar uma tela de Frete, permitindo que o usuário revise o endereço de entrega

- Melhorar a visibilidade dos botões de ação, tornando-os mais intuitivos

- Adicionar icone de perfil

---

### 📱 Melhorias Mobile

- Implementar uma tela de seleção de forma de pagamento, incluindo opções como cartão, PIX e boleto

- Adicionar uma tela de Frete, permitindo que o usuário revise o endereço de entrega

- Otimizar o carregamento de imagens para redes móveis

---

## 🛠️ Tecnologias Utilizadas

Os testes foram documentados seguindo a metodologia BDD (Behavior-Driven Development) com a linguagem Gherkin.

---
📜 Licença

Este projeto está sob a licença WeFit.

```Figma
https://www.figma.com/design/EYcIWSzoPn0IHfs5oI6o32/Teste-Front-React-WeFit---2024?node-id=0-1&p=f&t=dYX4gSMVKP0MGRIg-0
```
---

### 📌 Mantenha a documentação sempre atualizada! 🚀
