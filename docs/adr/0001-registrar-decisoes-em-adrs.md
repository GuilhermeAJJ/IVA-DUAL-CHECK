# 0001 — Registrar as decisões de arquitetura em ADRs

- **Status:** Aceito
- **Data:** 2026-10-17
- **Decisores:** Guilherme Justino

## Contexto

A tese do projeto é decidir, etapa por etapa, o que é regra (código), o que pede julgamento (IA) e o que é decisão (humano). Essas escolhas fazem parte do produto tanto quanto o código. Daqui a alguns meses, alguém vai perguntar por que o XML vem antes do PDF, por que a fila mora no PostgreSQL ou por que um modelo foi escolhido e não outro. Esse alguém pode ser o próprio autor.

Sem registro, a resposta fica espalhada em conversas, comentários de PR e na memória de quem decidiu. As alternativas descartadas somem primeiro, e o argumento vai junto. Aí a mesma discussão volta, ou a decisão é desfeita sem que se saiba o que ela protegia.

O registro precisa:

- ficar junto do código e mudar no mesmo PR que muda o código;
- passar pela mesma revisão que o código;
- ser lido direto no GitHub, sem ferramenta nem conta extra;
- custar pouco: cerca de uma página por decisão.

## Opções consideradas

### Opção 1 — Não registrar formalmente

As decisões ficam nas issues, nos PRs e nos commits.

- **A favor:** custo zero.
- **Contra:** o porquê se espalha e é difícil de achar; as alternativas descartadas quase nunca aparecem; nada diz qual decisão está em vigor.

### Opção 2 — Documento fora do repositório

Wiki do GitHub ou uma ferramenta de notas, como Notion ou Obsidian.

- **A favor:** edição rápida, sem PR.
- **Contra:** fica fora do versionamento e da revisão do código, então desatualiza em silêncio. A wiki foi desligada para a documentação morar em `docs/`, e notas pessoais são privadas, o que não serve a um projeto público.

### Opção 3 — ADRs curtos em Markdown no repositório

Um arquivo por decisão em `docs/adr/`, num formato curto, baseado no de Michael Nygard e no MADR: contexto, opções, decisão e consequências.

- **A favor:** versionado e revisado junto com o código; lido no próprio GitHub; o histórico mostra quando e por que cada decisão mudou.
- **Contra:** exige disciplina para escrever na hora da decisão, e não depois; vira burocracia se tudo virar ADR.

### Opção 4 — Design docs longos por funcionalidade, no estilo RFC

- **A favor:** profundidade, boa para mudanças grandes com muita gente envolvida.
- **Contra:** caro demais para um projeto com uma pessoa decidindo; mistura o desenho de uma funcionalidade com decisões que valem para o projeto inteiro.

## Decisão

Opção 3. As decisões de arquitetura ficam em `docs/adr/`, uma por arquivo, no [template](template.md), numeradas em sequência e escritas em português.

É a opção que atende os quatro requisitos do contexto com o menor custo. O risco de burocracia fica sob controle com o critério do [índice](README.md#quando-escrever-um): só vira ADR a decisão difícil de desfazer, que afeta mais de um componente, que escolhe entre alternativas reais ou que define onde entra IA.

Um ADR aceito não é reescrito. Quando a decisão muda, um ADR novo substitui o antigo, que continua no repositório com o status atualizado, como propõe o texto original de Nygard.

## Consequências

- **Boas:** o porquê de cada escolha fica ao lado do código que ela explica; a revisão do PR passa a revisar também a decisão; quem lê o repositório vê o raciocínio, e não só o resultado; os números das avaliações, como a do motor de extração, ganham um lugar fixo.
- **Ruins:** toda decisão relevante custa o tempo de escrever um ADR; um ADR que ninguém relê pode se descolar do código.
- **Como confirmar:** na revisão, um PR que toma uma decisão de arquitetura sem ADR volta para ser completado.

## Quando revisitar

Se os ADRs começarem a ser escritos depois do código, só para cumprir tabela, ou se o projeto ganhar mais gente e precisar de um processo de proposta mais longo.

## Referências

- Michael Nygard, [Documenting Architecture Decisions](https://www.cognitect.com/blog/2011/11/15/documenting-architecture-decisions), 2011.
- [MADR — Markdown Architectural Decision Records](https://adr.github.io/madr/), versão 4.0.0.
- [Issue #5](https://github.com/GuilhermeAJJ/IVA-DUAL-CHECK/issues/5).
