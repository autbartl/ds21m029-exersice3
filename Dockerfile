FROM jupyter/datascience-notebook:latest

EXPOSE 8000
EXPOSE 8001
EXPOSE ${MERCURY_SERVER_PORT}

USER $NB_USER

RUN python -m pip install mljar-mercury
RUN python -m pip install fastapi
RUN python -m pip install pydantic
RUN python -m pip install uvicorn


