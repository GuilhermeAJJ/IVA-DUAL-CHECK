# Política de segurança

## Versões com suporte

O projeto está na série 0.x, em desenvolvimento. Só a versão mais recente da `main` recebe correções.

## Como relatar uma vulnerabilidade

Não abra issue pública. Use o relato privado do GitHub: aba **Security** → **Report a vulnerability**, ou [este link](https://github.com/GuilhermeAJJ/IVA-DUAL-CHECK/security/advisories/new).

Conte:

- o que é a falha e onde ela está (arquivo, rota da API ou ferramenta do servidor MCP);
- como reproduzir, com dados fictícios;
- o impacto que você enxerga.

## O que esperar

O projeto é pessoal e mantido no tempo livre. A meta é responder em até 7 dias e combinar com você o prazo da correção e da divulgação.

## Escopo

Entra o código deste repositório, incluindo o uso de IA: por exemplo, o texto de um documento que vira instrução para o modelo (prompt injection) ou um dado que chega ao modelo sem precisar.

Ficam de fora os serviços externos que o projeto usa, como a calculadora da Receita Federal, os webservices da Sefaz e os serviços do Azure. Falhas neles vão para quem os mantém.

## Dados reais

O projeto usa apenas dados fictícios. Se você encontrar um dado real (nota fiscal, CNPJ, CPF, certificado ou segredo) no repositório ou no histórico, relate pelo canal privado acima, e não em issue.
