# language: pt
Funcionalidade: Adição ao carrinho e processo de pagamento
  Como um usuário autenticado
  Quero poder adicionar produtos ao carrinho e realizar o pagamento
  Para finalizar minha compra com sucesso

  Cenário: Adicionar produto ao carrinho
    Dado que o usuário está na página inicial
    Quando pesquisa "Arroz"
    E clica em "+" no primeiro produto da lista
    Então o produto deve aparecer na sacola de compras

  Cenário: Adicionar mais de um produto ao carrinho
    Dado que o usuário está na página inicial
    Quando pesquisa "Arroz"
    E clica em "+" no primeiro produto da lista
    E retorna à página e clica no segundo produto da lista
    Então os produtos devem aparecer na sacola de compras

  Cenário: Efetuar o fluxo de pagamento
    Dado que o usuário está na página inicial
    E já contém itens na sacola
    Quando clica na sacola de compras
    E valida o subtotal de acordo com os itens
    E clica em "Continuar para pagamento"
    Então deve aparecer uma caixa informativa com QR Code e código para baixar o app

  Cenário: Endereço indisponível
    Dado que o usuário está na página inicial
    Quando clica no campo de endereço
    E seleciona um endereço estrangeiro
    Então deve aparecer uma mensagem informando que o endereço está indisponível
    E o botão "Continuar para pagamento" deve ficar indisponível
