# Análise de risco

### Identificação de pontos críticos do fluxo e como você tentaria mitigar os riscos?

# 🧨 Análise de Risco

### Objetivo
Mapear os principais pontos de falha da jornada de compra do cliente (Web, Mobile e API), considerando impacto, frequência e criticidade, com estratégias de mitigação para garantir estabilidade e experiência do usuário.

---

## 🚨 Mapa de Riscos

| Área              | Risco Identificado                                                   | Impacto | Probabilidade | Mitigação                                                                 |
|-------------------|-----------------------------------------------------------------------|---------|----------------|---------------------------------------------------------------------------|
| Login             | Falha na autenticação com número de telefone                         | Alta    | Média          | Testes de autenticação com números válidos/invalidos e falha de rede     |
| Carrinho          | Itens não persistirem após adição ou sumirem entre sessões           | Alta    | Alta           | Testes de persistência de estado (localStorage/sessionStorage/API)       |
| Endereço          | Validação incorreta ou indisponibilidade de regiões                  | Alta    | Alta           | Mock de CEPs, testes de geolocalização e fallback para endereços padrões |
| Pagamento         | API indisponível, timeout ou falha no gateway                        | Crítica | Alta           | Retentativas automáticas, fallback, monitoramento e simulações em sandbox|
| Webhook           | Não recebimento ou atraso na confirmação de pagamento                | Crítica | Média          | Verificação de assincronismo e retentativas em background                |
| Mobile App        | Bugs em dispositivos com tela pequena / permissões não concedidas    | Média   | Alta           | Testes em múltiplos devices e simulações de recusas                      |
| Site Responsivo   | Quebra de layout ou elementos inacessíveis em navegadores antigos    | Média   | Média          | Testes em navegadores populares (Chrome, Safari, Firefox, Edge)          |
| Cupom/Promoções   | Cálculo incorreto no desconto ou cupom expirado sendo aceito         | Alta    | Média          | Testes com cupons válidos/expirados, regras de negócio claras            |
| Comunicação API   | Divergência de valores entre front e back                            | Crítica | Alta           | Testes de consistência e contratos (Contract Testing com schema OpenAPI) |
| Retentativas de pagamento | Processamento duplo de pedido                        | Alta    | Baixa          | Marcação de transações idempotentes no backend                           |

---

## 🛠️ Estratégias de Mitigação Gerais

- Cobertura de testes automatizados nos principais fluxos
- Monitoramento de falhas via logs e alertas (Observabilidade)
- Contratos de API bem definidos com versionamento
- Análises exploratórias manuais em features críticas antes de releases
- Testes mobile em simuladores e dispositivos físicos variados
- Ambientes de staging com dados reais mascarados
