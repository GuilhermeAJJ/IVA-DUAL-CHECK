# Changelog

Todas as mudanças relevantes deste projeto ficam registradas aqui.

O formato segue o [Keep a Changelog](https://keepachangelog.com/pt-BR/1.0.0/), e o projeto usa [Versionamento Semântico](https://semver.org/lang/pt-BR/).

## [Não lançado]

## [0.1.0] - 2026-10-24

### Adicionado

- Ambiente local com `docker compose up`: a API numa imagem multi-stage com uv, rodando sem root e com o disco só de leitura; o PostgreSQL 18 com pgvector; e o Azurite como emulador do Blob Storage, sem telemetria. Portas só em `127.0.0.1`, healthchecks, volumes nomeados e o `.env.example`. O CI sobe o ambiente em todo PR e confere o `/health`.
- CI no GitHub Actions em todo PR e em todo push na `main`: Ruff, pytest e a varredura de segredos do histórico inteiro com o gitleaks, com o token só de leitura e as actions fixadas por SHA. Dependabot para as actions, as dependências Python e as imagens Docker, com a mesma quarentena de 7 dias do uv. Quando o registro da imagem não informa a data de publicação, como o GHCR, a data é conferida na revisão do PR.
- Esqueleto Python 3.12 gerenciado com uv: API FastAPI com o `GET /health`, teste com pytest, lint e formatação com o Ruff e a seção "Como rodar" no README.
- Registro das decisões de arquitetura em `docs/adr`, com o template, o índice e o ADR-0001.
- README com a tese, o problema, a arquitetura e o roteiro até a v1.0.0.
- Licença MIT.
- `.gitignore` para Python, com segredos, certificados digitais e dados locais fora do Git.
- `.gitattributes` com fim de linha LF.
- Modelos de issue (tarefa e defeito) e de PR, guia de contribuição e política de segurança, com o relato privado de vulnerabilidades ativado.

[Não lançado]: https://github.com/GuilhermeAJJ/IVA-DUAL-CHECK/compare/v0.1.0...HEAD
[0.1.0]: https://github.com/GuilhermeAJJ/IVA-DUAL-CHECK/releases/tag/v0.1.0
