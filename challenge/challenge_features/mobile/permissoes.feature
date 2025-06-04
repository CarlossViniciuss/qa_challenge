# language: pt
Funcionalidade: Permissões do app mobile

  Cenário: Permissões de localização
    Dado que o usuário está no app
    Quando clica em "Usar minha localização"
    Então o app deve solicitar permissão ao sistema operacional
    E após aceitar, a localização deve ser preenchida automaticamente

  Cenário: Permissão de notificação
    Dado que o app é aberto pela primeira vez
    Quando o sistema solicita permissão de push
    Então o app deve lidar corretamente com aceitação ou rejeição
