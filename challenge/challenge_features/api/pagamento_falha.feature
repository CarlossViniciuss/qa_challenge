# language: pt
Funcionalidade: Tratamento de falhas em pagamentos

  Cenário: Cartão recusado por saldo insuficiente
    Dado que o cliente envia um pagamento com cartão válido mas sem limite
    Quando a API consulta o gateway
    Então deve retornar status 402 Payment Required com status "recusado"

  Cenário: Pagamento via VR/VA indisponível
    Dado que o cliente escolheu VR/VA como forma de pagamento
    E os produtos da sacola não são elegíveis
    Quando a API valida a transação
    Então deve retornar 406 Not Acceptable com mensagem "Método não disponível para os itens selecionados"

  Cenário: Timeout na comunicação com o gateway
    Dado que a API tenta comunicar-se com o gateway de pagamento
    E o tempo de resposta excede o timeout configurado
    Então deve retornar status 504 Gateway Timeout com fallback "aguardando confirmação"

  Cenário: Falha temporária do gateway
    Dado que o gateway está indisponível temporariamente
    Quando a API tenta processar o pagamento
    Então deve retornar status 503 Service Unavailable e registrar o pagamento como "pendente"

  Cenário: Retentativa automática após falha
    Dado que a primeira tentativa falha por erro temporário
    Quando a retentativa é ativada internamente
    Então o pagamento deve ser reprocessado até 3 vezes antes de ser marcado como falha definitiva
