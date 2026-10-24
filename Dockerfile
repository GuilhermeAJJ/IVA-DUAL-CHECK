# Imagem do uv como estágio nomeado: assim o Dependabot, que só lê as linhas FROM, também a atualiza.
FROM ghcr.io/astral-sh/uv:0.13.5@sha256:32a7bb39b496babbd997b0a39a4d66c126bdaf5661b302bf6f06abda8deca6ff AS uv

# Estágio 1: instala as dependências e o projeto num ambiente virtual.
FROM python:3.12-slim-trixie@sha256:a0f57064cbdcd6285fa45f51237ab0b35ea8ebaed06a1f5973e89e19dfb86704 AS builder

COPY --from=uv /uv /bin/uv

# Compila os .pyc no build, copia os arquivos do cache em vez de linkar e usa só o Python da imagem.
ENV UV_COMPILE_BYTECODE=1 \
    UV_LINK_MODE=copy \
    UV_PYTHON_DOWNLOADS=0

WORKDIR /app

# Dependências numa camada própria: mudar o código não reinstala tudo.
RUN --mount=type=cache,target=/root/.cache/uv \
    --mount=type=bind,source=uv.lock,target=uv.lock \
    --mount=type=bind,source=pyproject.toml,target=pyproject.toml \
    uv sync --locked --no-install-project --no-dev

COPY . /app

# --no-editable instala o projeto como pacote dentro do ambiente virtual, que passa a não depender de src/.
RUN --mount=type=cache,target=/root/.cache/uv \
    uv sync --locked --no-dev --no-editable

# Estágio 2: só o ambiente virtual, sem o uv nem o código-fonte, rodando sem root.
FROM python:3.12-slim-trixie@sha256:a0f57064cbdcd6285fa45f51237ab0b35ea8ebaed06a1f5973e89e19dfb86704

RUN groupadd --system --gid 999 app \
    && useradd --system --gid 999 --uid 999 --no-create-home --shell /usr/sbin/nologin app

# Os arquivos ficam com o root: o usuário app lê e executa o código instalado, mas não consegue alterá-lo.
COPY --from=builder /app/.venv /app/.venv

ENV PATH="/app/.venv/bin:$PATH" \
    PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

# O usuário app, pelo número: com o nome, um orquestrador como o Kubernetes não consegue conferir que não é root.
USER 999:999
WORKDIR /app
EXPOSE 8000

CMD ["uvicorn", "iva_dual_check.main:app", "--host", "0.0.0.0", "--port", "8000"]
