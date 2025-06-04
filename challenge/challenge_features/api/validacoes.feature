# language: pt
Funcionalidade: Validações de payload e integridade de dados

  Cenário: Payload com campos obrigatórios ausentes
    Dado que o cliente envia uma requisição sem os campos "card_number", "cvv" ou "amount"
    Quando a API tenta processar
    Então deve retornar 400 Bad Request com a lista de campos faltando

  Cenário: Valor da sacola divergente do front
    Dado que o valor enviado pelo cliente difere do calculado no backend
    Quando a API valida o pedido
    Então deve retornar 409 Conflict com mensagem "Inconsistência de valores detectada"
