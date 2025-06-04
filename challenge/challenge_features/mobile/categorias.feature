# language: pt
Funcionalidade: Seção de Categorias do app

  Cenário: Acessar tela de Categorias
    Dado que o usuário está no app
    Quando clica no ícone "Categorias" na navbar inferior
    Então deve visualizar a seção com Destaques e diversas categorias como "Próximos a vencer", "Destilados", "Vinhos" e "Cervejas"

  Cenário: Acessar categoria "Destilados"
    Dado que o usuário está na tela de Categorias
    Quando clica em "Destilados"
    Então deve ser redirecionado para a lista de produtos dessa categoria
    E os produtos exibidos devem pertencer exclusivamente à categoria "Destilados"
