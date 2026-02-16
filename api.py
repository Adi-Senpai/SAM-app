import asyncio

# ✅ MUST run before Mangum import
try:
    asyncio.get_running_loop()
except RuntimeError:
    loop = asyncio.new_event_loop()
    asyncio.set_event_loop(loop)

from fastapi import FastAPI
from mangum import Mangum

app = FastAPI(lifespan=None)  # disable lifespan

@app.get("/")
async def hello_world():
    return {"message": "AWS Lambda + FastAPI Integration Successful"}

handler = Mangum(app, lifespan="off")
