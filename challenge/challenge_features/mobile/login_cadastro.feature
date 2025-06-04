# language: pt
Funcionalidade: Fluxo de login e cadastro no app

  Cenário: Login com número de telefone válido
    Dado que o usuário acessa a tela de login
    Quando digita um número de telefone válido
    E clica em "Avançar"
    Então deve ser direcionado para a tela de código de verificação

  Cenário: Número de telefone inválido
    Dado que o usuário digita um número de telefone incompleto ou inválido
    Quando clica em "Avançar"
    Então deve visualizar uma mensagem de erro clara e impedimento de prosseguir

  Cenário: Código de verificação válido
    Dado que o usuário recebeu o código por SMS
    Quando insere o código corretamente
    Então deve ser direcionado para o formulário de cadastro (caso seja novo usuário)

  Cenário: Cadastro completo com dados válidos
    Dado que o usuário acessa o formulário de cadastro
    Quando preenche "Nome", "Sobrenome", "Email"
    E marca a caixa de aceite dos Termos e Política de Privacidade
    E clica em "Continuar"
    Então o cadastro deve ser concluído com sucesso e o usuário redirecionado para a Home
