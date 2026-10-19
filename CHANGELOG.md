# Changelog

Todas as mudanças relevantes deste projeto ficam registradas aqui.

O formato segue o [Keep a Changelog](https://keepachangelog.com/pt-BR/1.0.0/), e o projeto usa [Versionamento Semântico](https://semver.org/lang/pt-BR/).

## [Não lançado]

### Adicionado

- Esqueleto Python 3.12 gerenciado com uv: API FastAPI com o `GET /health`, teste com pytest, lint e formatação com o Ruff e a seção "Como rodar" no README.

3. Conferir, seguindo o README ao pé da letra

uv run ruff format --check
uv run uvicorn iva_dual_check.main:app --reload

- format --check: o Ruff também confere os .md, e o resultado tem que continuar em 11 files already formatted.
- O comando do README: com a API no ar, abra http://127.0.0.1:8000/health no navegador. A página deve mostrar {"status":"ok"}, e o terminal registra "GET /health HTTP/1.1" 200 OK. Depois, Ctrl+C para parar. Documentação que ninguém executa fica errada sem ninguém notar.

- Registro das decisões de arquitetura em `docs/adr`, com o template, o índice e o ADR-0001.
- README com a tese, o problema, a arquitetura e o roteiro até a v1.0.0.
- Licença MIT.
- `.gitignore` para Python, com segredos, certificados digitais e dados locais fora do Git.
- `.gitattributes` com fim de linha LF.
- Modelos de issue (tarefa e defeito) e de PR, guia de contribuição e política de segurança, com o relato privado de vulnerabilidades ativado.
