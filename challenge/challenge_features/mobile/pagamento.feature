# language: pt
Funcionalidade: Tela de Pagamento

  Cenário: Iniciar pagamento a partir da sacola
    Dado que o usuário possui ao menos um item na sacola
    Quando clica em "Continuar"
    Então deve visualizar uma lista com sugestões adicionais de produtos
    E deve visualizar o botão "Continuar para o pagamento"

  Cenário: Visualizar resumo dos itens da sacola na tela de pagamento
    Dado que o usuário clicou em "Continuar para o pagamento"
    Então deve visualizar os produtos escolhidos com nome, quantidade e subtotal corretos

  Cenário: Inserir CPF para nota fiscal
    Dado que o usuário está na tela de pagamento
    Quando clica na seção de "Identificação no Pedido"
    E preenche o número corretamente
    Então o campo deve ser salvo com sucesso e exibido na tela

  Cenário: Selecionar forma de pagamento
    Dado que o usuário está na seção de pagamento
    Quando clica em "Selecionar forma de pagamento"
    Então deve visualizar as opções: Nubank, Apple Pay, Click to Pay, Cartão de Crédito e VR/VA

  Cenário: Adicionar contribuição para o entregador
    Dado que o usuário deseja contribuir com o entregador
    Quando seleciona um valor de gorjeta
    Então o valor deve ser adicionado ao total da compra

  Cenário: Finalizar pedido com sucesso
    Dado que todos os dados foram preenchidos corretamente
    Quando clica em "Continuar"
    Então o pedido deve ser finalizado e o usuário redirecionado para a tela de status
