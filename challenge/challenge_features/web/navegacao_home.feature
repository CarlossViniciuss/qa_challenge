# language: pt
Funcionalidade: Acesso e navegação na página inicial
  Como um visitante do site Daki
  Quero poder acessar a página inicial e explorar as seções disponíveis
  Para encontrar produtos com facilidade

  Cenário: Acessar página inicial
    Dado que o usuário acessa "https://soudaki.com/shop"
    Então a página deve carregar corretamente exibindo as seções Categoria, Aproveite Agora, Perguntas frequentes e um footer
