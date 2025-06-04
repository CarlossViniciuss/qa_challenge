# language: pt
Funcionalidade: Seção de Busca no app

  Cenário: Exibir campo de busca
    Dado que o usuário acessa o app
    Quando clica no ícone de "Busca" na navbar inferior
    E efetua uma pesquisa
    Então deve visualizar o que foi pesquisado

  Cenário: Buscar produto inexistente
    Dado que o usuário está na tela de Busca
    Quando digita um termo inválido como "xyzabc123"
    Então deve ver uma mensagem indicando que nenhum produto foi encontrado
