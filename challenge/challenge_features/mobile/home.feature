# language: pt
Funcionalidade: Página inicial do app Daki

  Cenário: Exibir carrossel de promoções na home
    Dado que o usuário acessa a tela inicial do app
    Então deve visualizar um carrossel com banners promocionais roláveis horizontalmente

  Cenário: Exibir seções de produtos personalizados por região
    Dado que o usuário está na home
    Então deve visualizar as seções "Populares na sua área", "Favoritos na sua região" e "Melhores para o seu dia" com produtos

  Cenário: Acessar funcionalidade "Pedir novamente"
    Dado que o usuário está na home
    Quando clica no ícone "Pedir novamente"
    Então deve ser direcionado a uma tela com histórico de pedidos anteriores caso tenha

  Cenário: Acessar funcionalidade "Indicar amigos"
    Dado que o usuário está na home
    Quando clica no ícone "Indicar amigos"
    Então deve aparecer a tela "Indique pra galera!"

  Cenário: Scroll vertical completo
    Dado que o usuário está na home
    Quando realiza o scroll até o final da página
    Então deve carregar todas as seções disponíveis, inclusive "Aproveite agora" e "Categorias"
