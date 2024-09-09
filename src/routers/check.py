from fastapi import APIRouter, Response, status

router = APIRouter(
    prefix="/check",
    tags=["check"]
)

@router.get("/healthcheck")
async def healthcheck() -> Response:
    return Response(status_code=status.HTTP_200_OK)