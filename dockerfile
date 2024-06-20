# pull official base image
FROM python:3.12-slim-bullseye

# set work directory
WORKDIR /opt/backbog

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies
RUN pip install --upgrade pip
COPY requirements .
RUN pip install -r requirements/dev.txt

# copy project
COPY . .