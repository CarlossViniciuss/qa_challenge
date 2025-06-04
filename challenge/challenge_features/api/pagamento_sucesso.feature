# language: pt
Funcionalidade: Processamento de pagamentos com sucesso

  Cenário: Pagamento com cartão válido
    Dado que o cliente envia um payload válido com os dados do cartão e valor total
    Quando a API processa o pagamento
    Então deve retornar 200 OK com status "aprovado" e um ID de transação
