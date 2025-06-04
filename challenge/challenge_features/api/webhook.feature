# language: pt
Funcionalidade: Confirmações de pagamento via Webhook

  Cenário: Confirmação assíncrona via webhook
    Dado que o pagamento foi feito com sucesso no gateway
    Quando o gateway envia um webhook de confirmação
    Então o sistema deve atualizar o status do pedido para "pago" e notificar o usuário

  Cenário: Falha no webhook de confirmação
    Dado que o webhook não chega após 60s
    Então o backend deve marcar o pagamento como "em análise" e disparar retentativa ou alerta manual
