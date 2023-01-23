ARG VARIANT=3.11-bullseye
FROM mcr.microsoft.com/vscode/devcontainers/python:0-${VARIANT}
ENV PYTHONUNBUFFERED 1
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends postgresql-client
