# language: pt
Funcionalidade: Menu lateral do app

  Cenário: Acessar opção "Entrar ou fazer cadastro"
    Dado que o usuário está na tela inicial do app
    Quando clica no botão "Menu"
    E seleciona "Entrar ou fazer cadastro"
    Então deve ser redirecionado para a tela de login ou cadastro

  Cenário: Acessar suporte
    Dado que o usuário acessa o Menu
    Quando clica em "Suporte"
    Então deve ser redirecionado para uma tela de ajuda

  Cenário: Visualizar "Termos de uso"
    Dado que o usuário está no Menu
    Quando clica em "Termos de uso"
    Então deve visualizar o conteúdo dos termos em um modal

  Cenário: Visualizar "Política de privacidade"
    Dado que o usuário está no Menu
    Quando clica em "Política de privacidade"
    Então deve visualizar a política em um modal

  Cenário: Ver horário de funcionamento
    Dado que o usuário está no Menu
    Quando clica em "Horário de funcionamento"
    Então deve visualizar os horários atualizados de entrega ou funcionamento das lojas

  Cenário: Alterar idioma do aplicativo
    Dado que o usuário está no Menu
    Quando clica em "Idioma do aplicativo"
    Então deve poder selecionar entre os idiomas disponíveis
    E o idioma selecionado deve ser aplicado imediatamente no app
