# Testes de exceção

### Cenários não óbvios identificados, quais casos de exceção você enxerga para essa jornada?

---

# ❗ Testes de Exceção
Aqui eu buscaria sempre validar os cenários (edge) que não são tão obvios, mas que podem atrapalhar a experiência do usuario. Mesmo que não estejam descritos diretamente nas regras de negócio.


---

## 🚨 Casos de Exceção por Plataforma

### 🌐 Web & 📱 Mobile

- **Instabilidade da internet durante o checkout**  
  > Simular perda de conexão ao clicar em "Finalizar Pedido".  
  ✔️ Esperado: Exibir mensagem clara e permitir reenvio seguro do pedido.

- **Atualização da página durante o preenchimento de formulário**  
  > Usuário atualiza a página antes de finalizar cadastro/endereço.  
  ✔️ Esperado: Recarregar com campos preservados ou exibir alerta.

- **Back navigation (voltar do navegador ou gesto mobile)**  
  > Após adicionar itens no carrinho e tentar voltar.  
  ✔️ Esperado: Estado do carrinho deve ser mantido.

- **Sessão expirada durante o processo de compra**  
  > Iniciar o pedido e deixar inativo por 30+ minutos.  
  ✔️ Esperado: Usuário deve ser redirecionado para login ou receber alerta.

- **Carrosséis e sliders com swipe acelerado**  
  > Swipe rápido demais no carrossel de banners no app.  
  ✔️ Esperado: Interface não deve travar ou renderizar incorretamente.

---

### 🔌 API

- **Payload com valores nulos ou string vazia (valores diversos)**  
  > Enviar `"amount": ""` ou `"card_number": null`.  
  ✔️ Esperado: Retornar erro `400 Bad Request` com mensagem clara.

- **Envio de métodos HTTP incorretos**  
  > Fazer `GET` em um endpoint `POST`.  
  ✔️ Esperado: Retornar `405 Method Not Allowed`.

- **Envio de campos a mais no payload**  
  > Enviar `"extra_field": "teste"`  
  ✔️ Esperado: Ignorar campo ou retornar aviso sem quebrar o fluxo.

- **Simulação de múltiplos requests simultâneos (race condition)**  
  > Enviar 3 pedidos quase ao mesmo tempo com o mesmo cartão.  
  ✔️ Esperado: Apenas um deles deve ser processado com sucesso.

---

### 🧪 Outras Situações

- **Dispositivo com data/hora incorreta**  
  > App acessado com horário do sistema alterado.  
  ✔️ Esperado: Sistema deve se basear no servidor, não no cliente.

- **Instalação em dispositivo com root/jailbreak**  
  > Simular uso do app em dispositivo inseguro.  
  ✔️ Esperado: App deve detectar e alertar ou limitar funcionalidades sensíveis.

- **Permissão de localização negada após aceitar**  
  > Usuário aceita, depois nega no sistema.  
  ✔️ Esperado: App deve lidar com essa revogação de forma fluida.

- **Troca de rede (Wi-Fi para 4G)** durante pedido  
  ✔️ Esperado: Pedido deve manter integridade e estado mesmo com mudança de rede.

---

## ✅ Considerações

Esses testes complementam os casos de uso comuns, aumentando a robustez e prevenindo falhas reais enfrentadas por usuários. São ideais para serem incluídos em testes exploratórios, smoke tests e planos de regressão.

