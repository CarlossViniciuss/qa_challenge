# language: pt
Funcionalidade: Autenticação nas requisições de pagamento

  Cenário: Token expirado ou inválido
    Dado que a requisição de pagamento contém um token JWT inválido ou expirado
    Quando o backend tentar autenticar a requisição
    Então a API deve retornar status 401 Unauthorized com mensagem "Token inválido ou expirado"

  Cenário: Requisição sem autenticação
    Dado que a requisição não possui token
    Quando o backend processa a requisição
    Então deve retornar 403 Forbidden com mensagem de acesso negado
