# Como contribuir

O IVA Dual Check é um projeto pessoal de estudo e portfólio. Relatos de defeito e sugestões são bem-vindos por issue. Para mandar um PR, abra antes uma issue e combine o escopo.

## Quadro

O trabalho anda no [quadro do projeto](https://github.com/users/GuilhermeAJJ/projects/1):

| Coluna | Significa |
|---|---|
| Backlog | Tarefa de uma versão futura |
| Pronto | Tarefa da versão atual, pronta para começar |
| Fazendo | Em andamento: no máximo 2 ao mesmo tempo |
| Em revisão | PR aberto, esperando revisão |
| Feito | PR com merge e issue fechada |

Cada versão é um marco (milestone), de v0.1.0 a v0.8.0. Só a versão atual tem tarefas em Pronto.

## O caminho de uma tarefa

1. A tarefa é uma issue com contexto, escopo e critérios de aceite verificáveis. O modelo **Tarefa** já traz esses campos.
2. O peso vai no campo **Pontos** do quadro (veja [Pontos](#pontos)).
3. A branch sai da `main` com o nome `tipo/numero-da-issue-descricao`, por exemplo `feat/7-esqueleto-python`.
4. Os commits seguem o [Conventional Commits](https://www.conventionalcommits.org/pt-br/v1.0.0/), em português: `feat: adiciona leitor do XML da NF-e`.
5. O PR usa o modelo do repositório e fecha a issue com `Closes #N`.
6. O merge é sempre por squash, depois da revisão e com o CI verde. A branch é apagada em seguida.

Com o squash, cada PR vira um único commit na `main`: o título do PR vira a primeira linha, e a descrição, o corpo. Por isso o título do PR também segue o Conventional Commits. Os commits da branch continuam visíveis no PR.

## Tipos de commit e labels

| Tipo | Uso |
|---|---|
| `feat` | Funcionalidade nova |
| `fix` | Correção de defeito |
| `docs` | Documentação |
| `test` | Testes |
| `refactor` | Mudança de código sem mudar o comportamento |
| `chore` | Manutenção e configuração do repositório |
| `ci` | Integração contínua |
| `build` | Dependências, empacotamento e ambiente local |

Cada tipo tem um label `tipo: ...`. Há também:

- `adr`: a tarefa registra uma decisão de arquitetura em `docs/adr`;
- `spike`: investigação curta, que entrega conhecimento, não código;
- `release`: fechamento de versão;
- `ia`: um modelo de IA participa do fluxo. Filtrando por ele, aparecem as etapas com IA; todo o resto é código.

## Pontos

Os pontos medem complexidade e incerteza, não horas. A escala é a de Fibonacci:

| Pontos | Significa |
|---|---|
| 1 | Trivial, sem dúvida |
| 2 | Pequena |
| 3 | Média, com pouca incerteza |
| 5 | Grande ou com incerteza |
| 8 | Grande demais: quebre antes de começar |

No fechamento de cada versão, a estimativa é comparada com o que aconteceu, e os pesos da versão seguinte são recalibrados.

## Quando uma tarefa está pronta

- [ ] O PR foi revisado e aprovado.
- [ ] O CI está verde: lint, testes e varredura de segredos.
- [ ] Há testes cobrindo o comportamento novo.
- [ ] O CHANGELOG foi atualizado na seção "Não lançado".
- [ ] A issue foi fechada e o card foi para Feito.

## Idioma

Documentação, issues, PRs e commits ficam em português. O código fica em inglês, menos os termos do leiaute fiscal (CST, cClassTrib, NCM), que mantêm o nome oficial.

## Dados e segredos

- Só dados fictícios. Nenhuma nota fiscal real, CNPJ, CPF ou certificado digital entra no repositório nem nas issues.
- Segredos ficam no `.env`, que nunca é commitado. O `.env.example` lista as variáveis com valores falsos.
- O CI varre o histórico inteiro com o gitleaks em todo PR. Um achado deixa o PR vermelho, e o segredo vazado precisa ser revogado, não só apagado: o histórico do Git guarda o valor antigo.
- Vulnerabilidade se relata em privado, como explica a [política de segurança](SECURITY.md).

## Versões

O projeto segue o [Versionamento Semântico](https://semver.org/lang/pt-BR/). A série 0.x é de desenvolvimento: cada marco fecha com uma tag, uma release no GitHub e a seção correspondente no [CHANGELOG](CHANGELOG.md).
