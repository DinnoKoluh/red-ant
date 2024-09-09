from fastapi import FastAPI

from routers import check

app = FastAPI(title="red-ant")

app.include_router(check.router)