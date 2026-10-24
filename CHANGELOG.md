# Changelog

Todas as mudanças relevantes deste projeto ficam registradas aqui.

O formato segue o [Keep a Changelog](https://keepachangelog.com/pt-BR/1.0.0/), e o projeto usa [Versionamento Semântico](https://semver.org/lang/pt-BR/).

## [Não lançado]

### Adicionado

- CI no GitHub Actions em todo PR e em todo push na `main`: Ruff, pytest e a varredura de segredos do histórico inteiro com o gitleaks, com o token só de leitura e as actions fixadas por SHA. Dependabot para as actions e as dependências Python, com a mesma quarentena de 7 dias do uv.
- Esqueleto Python 3.12 gerenciado com uv: API FastAPI com o `GET /health`, teste com pytest, lint e formatação com o Ruff e a seção "Como rodar" no README.
- Registro das decisões de arquitetura em `docs/adr`, com o template, o índice e o ADR-0001.
- README com a tese, o problema, a arquitetura e o roteiro até a v1.0.0.
- Licença MIT.
- `.gitignore` para Python, com segredos, certificados digitais e dados locais fora do Git.
- `.gitattributes` com fim de linha LF.
- Modelos de issue (tarefa e defeito) e de PR, guia de contribuição e política de segurança, com o relato privado de vulnerabilidades ativado.
