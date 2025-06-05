# Aspectos Não Funcionais

### Quais os teste não funcionais você enxerga para esse tipo de teste?

---

# 🧱 Aspectos Não Funcionais

## 🚀 Performance

- **Teste de carga**
  > Simular 500+ usuários simultâneos realizando pedidos.
  ✔️ Esperado: Sistema deve manter tempo de resposta adequado (< 3s) e não apresentar erros.

- **Teste de estresse**
  > Elevar o volume até além da capacidade esperada.
  ✔️ Esperado: Sistema deve falhar de forma controlada e manter logs.

- **Teste de latência na API**
  > Avaliar tempo de resposta médio em diferentes regiões.
  ✔️ Esperado: API deve responder em < 500ms em 95% dos casos.

---

## 🔐 Segurança

- **Validação de tokens**
  > Testar tokens expirados, corrompidos e repetidos.
  ✔️ Esperado: Rejeição adequada com códigos HTTP claros.

- **Teste de injeção (SQL/JSON/XML)**
  > Inserir payloads maliciosos nos campos do app e da API.
  ✔️ Esperado: Requisições devem ser sanitizadas e protegidas.

- **Teste de autenticação**
  > Forçar requisições sem login ou com login de outro usuário.
  ✔️ Esperado: Sistema deve barrar ou anonimizar qualquer dado sensível.

---

## 🧭 Usabilidade

- **Teste de acessibilidade**
  > Usar leitores de tela, contraste, navegação via teclado.
  ✔️ Esperado: App e site devem ser acessíveis a pessoas com deficiência.

- **Teste de navegação fluida**
  > Garantir que o usuário consiga completar a jornada sem travas ou confusões.

- **Teste de timeout**
  > Detectar sessões inativas e expirar de forma amigável.

---

## 📱 Compatibilidade

- **Cross-browser e cross-device**
  > Testar o site em Safari, Chrome, Firefox, além de iPhones e Androids com diferentes tamanhos.
  ✔️ Esperado: Layout deve manter integridade e usabilidade.

- **Compatibilidade com versões antigas do sistema operacional**
  > Garantir funcionamento mínimo no Android 9+ e iOS 13+.

---

## 🧩 Escalabilidade

- **Deploy em ambiente com aumento de requisições**
  > Testar replicação automática de instâncias de backend.
  ✔️ Esperado: Sistema deve escalar horizontalmente sem prejudicar performance.

---

## 📝 Considerações Finais

Os testes não funcionais podem simular situações reais seja de segurança ou até mesmo de desempenho levando em conta que sendo um produto de e-commerce existem épocas do ano que teremos um aumento expressivo de utilização.

Resumindo são testes que efetuamos, mas que esperamos nunca nos preocupar de fato são testes de sanitização.
