# language: pt
Funcionalidade: Seleção de produtos
  Como um usuário do site Daki
  Quero poder selecionar produtos via busca, categoria ou promoções
  Para adicionar itens ao meu carrinho

  Cenário: Selecionar um produto via campo de busca
    Dado que o usuário está na página inicial
    Quando pesquisa por "Arroz"
    Então deve visualizar uma lista de produtos de acordo com o que foi pesquisado
    E ao clicar no botão "+" do primeiro produto
    Então deve aparecer um formulário de endereço
    E após preencher o formulário, o produto deve ser adicionado ao carrinho

  Cenário: Selecionar um produto via categoria
    Dado que o usuário está na página inicial
    Quando rola a página até a seção Categoria
    E seleciona a primeira categoria
    Então deve visualizar uma lista de produtos da categoria

  Cenário: Selecionar um produto via seção Aproveite Agora
    Dado que o usuário está na página inicial
    Quando rola a página até a seção Aproveite Agora
    E seleciona o primeiro item promocional
    Então deve visualizar uma lista de produtos de acordo com o item selecionado
