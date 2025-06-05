# Métricas de qualidade

### Com base na jornada do cliente o que você indicaria como métrica para o time de Qualidade? 

---

# 📊 Métricas de Qualidade

### Objetivo
Definir métricas que permitam ao time de Qualidade acompanhar e garantir a saúde da jornada do cliente desde o login até a finalização do pedido, com foco em desempenho, estabilidade e usabilidade.

---

## 🎯 Métricas Recomendadas

### 🧪 Funcionais

| Métrica                                  | Descrição                                                                 |
|------------------------------------------|---------------------------------------------------------------------------|
| Taxa de sucesso no fluxo de compra       | % de usuários que conseguem finalizar a compra sem bloqueios              |
| Tempo médio de navegação por sessão      | Indica se o usuário está conseguindo navegar de forma fluida              |
| % de formulários enviados com erro       | Mede possíveis gargalos de UX ou falhas na validação                     |

---

### 🤖 Automação e Testes
Aqui eu levaria em conta não apenas os testes do time de qualidade mas tambem de desenvolvimento, como os testes unitarios.

| Métrica                                  | Descrição                                                                 |
|------------------------------------------|---------------------------------------------------------------------------|
| % de cobertura de testes automatizados   | Cobertura de testes E2E, API e unitários por funcionalidade               |
| Tempo médio de execução dos testes       | Indica eficiência da pipeline de testes                                   |
| Taxa de falha em testes de regressão     | Ajuda a identificar instabilidade após mudanças                           |

---

### 🐞 Bugs e Erros

| Métrica                                  | Descrição                                                                 |
|------------------------------------------|---------------------------------------------------------------------------|
| Bugs por release                         | Quantidade de bugs detectados após cada entrega                           |
| Tempo médio para resolução de bugs       | Mede a agilidade da squad em resolver problemas críticos                   |
| Taxa de bugs em produção                 | Incidentes em produção não detectados por testes                          |

---

### 📱 Experiência do Cliente
Aqui também cabe uma analise de teste de calor para colher o maior numero de dados possivel.

| Métrica                                  | Descrição                                                                 |
|------------------------------------------|---------------------------------------------------------------------------|
| Taxa de rejeição de push/permissões      | Indica se os pedidos de permissão estão sendo mal recebidos               |
| Latência percebida no carregamento do app| Tempo médio até a primeira interação após abrir o app                     |
| NPS focado em UX                         | Avaliação direta dos usuários sobre experiência de uso                    |

---

## 🛠️ Sugestão de Ferramentas

- **Testes**: Playwright, Cypress, Robot, Postman/Newman, Robot como ja descrito no challenge de automação
- **Observabilidade**: Datadog, Sentry, Grafana + Prometheus (Posso falar com muita exatidao na bao entrega do Datadog nesse sentido por ja ter utilizado)
- **Análise UX**: Hotjar, Clarity, Firebase Analytics
- **Métricas de erro/API**: Elastic APM, New Relic, Postman Monitor
