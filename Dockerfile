FROM jupyter/datascience-notebook:latest

EXPOSE ${JUPYTER_NOTEBOOK}
EXPOSE ${MERCURY}
EXPOSE ${FASTAPI}
EXPOSE ${MERCURY_SERVER_PORT}


USER $NB_USER

RUN python -m pip install mljar-mercury
RUN python -m pip install fastapi
RUN python -m pip install pydantic
RUN python -m pip install uvicorn


