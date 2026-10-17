# Decisões de arquitetura (ADRs)

Um ADR (*Architecture Decision Record*) registra uma decisão de arquitetura: o contexto, as opções consideradas, a escolha e as consequências. Ele responde, meses depois, à pergunta "por que é assim, e não de outro jeito?".

## Quando escrever um

Quando a decisão:

- é difícil ou cara de desfazer;
- afeta mais de um componente, ou o contrato entre eles;
- escolhe entre alternativas reais, e alguém vai perguntar "por que não a outra?";
- define onde entra IA e onde o código resolve sozinho, que é a tese do projeto.

Biblioteca fácil de trocar, nome e formatação não pedem ADR: o PR basta.

## Como propor

1. Copie o [template](template.md) para `NNNN-titulo-em-minusculas.md`, com o próximo número livre.
2. Abra um PR com o label `adr`. O PR é a proposta, e a discussão acontece nele.
3. Quando o PR é aprovado, o ADR entra na `main` já com status **Aceito**. Se a decisão depender de algo ainda em aberto, como um spike, ele entra como **Proposto**.
4. Acrescente uma linha no índice abaixo.

Um ADR aceito não é reescrito; só pode ter um erro de digitação ou um link quebrado corrigido. Se a decisão mudar, um ADR novo substitui o antigo, e no antigo muda apenas o status, para **Substituído pelo ADR-NNNN**. O histórico das decisões também faz parte do registro.

## Status

| Status | Significa |
|---|---|
| Proposto | Escrito, ainda sem decisão |
| Aceito | Em vigor |
| Substituído | Trocado por um ADR mais novo, indicado no próprio status |

## Índice

| ADR | Decisão | Status | Data |
|---|---|---|---|
| [0001](0001-registrar-decisoes-em-adrs.md) | Registrar as decisões de arquitetura em ADRs | Aceito | 2026-10-17 |
