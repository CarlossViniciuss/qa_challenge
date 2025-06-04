# language: pt
Funcionalidade: Seção de Sacola do app

  Cenário: Sacola inicialmente vazia
    Dado que o usuário acessa a aba "Sacola"
    Então deve visualizar a mensagem "Sua sacola está vazia"
    E deve visualizar o botão "Adicionar itens"
    E deve visualizar o botão "Adicionar sacola montada no site"

  Cenário: Redirecionamento ao clicar em "Adicionar itens"
    Dado que o usuário está na aba "Sacola" vazia
    Quando clica em "Adicionar itens"
    Então deve ser redirecionado para a tela de categorias

  Cenário: Integração com sacola do site via código
    Dado que o usuário está na aba "Sacola" vazia
    Quando clica em "Adicionar sacola montada no site"
    Então deve visualizar um campo para inserir o código da sacola gerada no site

  Cenário: Adicionar produto a partir da sacola
    Dado que o usuário está na aba "Sacola"
    Quando clica em "Adicionar itens"
    E seleciona a primeira categoria em destaque
    E busca o primeiro item na lista
    E clica no botão "+"
    Então o seletor de quantidade deve exibir o valor 1
    E o ícone da sacola deve indicar 1 item adicionado

  Cenário: Visualizar item adicionado na sacola
    Dado que o usuário adicionou um produto
    Quando acessa a aba "Sacola"
    Então deve visualizar o produto, a quantidade e o subtotal corretos

  Cenário: Limpar toda a sacola
    Dado que o usuário possui um ou mais itens na sacola
    Quando clica no ícone de lixeira no topo da tela
    Então deve aparecer um modal perguntando se deseja limpar toda a sacola
    E ao clicar sim deve esvaziar a sacola

  Cenário: Remover um único item da sacola
    Dado que o usuário possui múltiplos itens na sacola
    Quando ajusta a quantidade para zero ou clica no ícone de lixeira individual
    Então o item deve ser removido da sacola
