# Automação 

### Nos dê sua opinião sobre o framework adequado para esse tipo de teste e o porque usuária? 

---

# 🤖 Estratégia de Automação

## 💡 Escolha do Framework Ideal para Este Projeto

A automação de testes para o fluxo de compra no aplicativo da Daki foi pensada com base em **abrangência**, **manutenibilidade** e **compatibilidade com web, mobile e APIs**. A proposta busca equilibrar clareza, robustez técnica e facilidade de integração contínua (CI).

---

## ⚔️ Comparativo entre Ferramentas de Automação

| Ferramenta                         | Web | Mobile         | API | Linguagem       | Observações                                                                      |
|------------------------------------|-----|----------------|-----|-----------------|----------------------------------------------------------------------------------|
| **Cypress**                        | ✅   | 🚫             | ✅   | JS/TS           | Muito rápido para web, mas não cobre mobile nativo                               |
| **Playwright**                     | ✅   | 🚫             | ✅   | JS/TS/Python/C# | Suporte parcial a mobile via browser emulação, não cobre app nativo              |
| **Robot Framework**                | ✅   | ✅ (via Appium) | ✅   | Python          | Super flexível, ótimo para cenários E2E com leitura fácil, integração com Appium |
| **Appium**                         | 🚫  | ✅              | 🚫  | Qualquer        | Padrão de mercado para automação mobile nativa                                   |

---

## 🧰 Stack de Ferramentas Recomendada

| Componente        | Ferramenta                                   | Justificativa Técnica                                                      |
|-------------------|----------------------------------------------|----------------------------------------------------------------------------|
| **Mobile**        | Appium + Robot Framework                     | Appium suporta apps Android/iOS e Robot oferece sintaxe legível e flexível |
| **APIs**          | Python Requests(automação) / Postman(manual) | Leve, direto e fácil de mockar microserviços (como o de pagamentos)        |
| **CI/CD (extra)** | GitHub Actions ou Jenkins                    | Integração com testes em PRs, pipelines simples e reutilizáveis            |

---

## 📌 Justificativa da Stack

- O **Robot Framework** adota uma abordagem descritiva e legível, com uma curva de aprendizado bem facil e com uma comunidade robusta. Sua integração com Appium permite testes mobile nativos de forma acessível e organizada.


- O **Appium** é o padrão da indústria para automação de apps mobile. Ele simula interações reais com o dispositivo e possui uma comunidade madura e bem documentada. Sua compatibilidade com múltiplas linguagens e ferramentas o torna altamente adaptável.


- As bibliotecas **Requests** (automatizado) e **Postman** (manual) são complementares para validar microserviços com agilidade e clareza, cobrindo desde testes automatizados até exploração manual.

---

## 🎯 Considerações Finais

A stack proposta é adequada para o cenário da Daki por permitir automação de ponta a ponta da jornada de compra — desde o app mobile até a comunicação com microserviços. Além disso, favorece a manutenção e a integração contínua com o pipeline de entrega.

Essa stack permite não apenas escalar a automação de forma confiável, mas também alinhar com um ambiente de desenvolvimento ágil como o da Daki, que opera com foco em performance e experiência mobile.
