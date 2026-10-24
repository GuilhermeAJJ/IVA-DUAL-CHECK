import os
from importlib.metadata import version
from typing import Literal

from fastapi import FastAPI
from pydantic import BaseModel

app = FastAPI(title="IVA Dual Check", version=version("iva-dual-check"))


class Health(BaseModel):
    status: Literal["ok"]


@app.get("/health")
async def health() -> Health:
    return Health(status="ok")
