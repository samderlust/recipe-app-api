FROM python:3.7-alpine
LABEL  com.samderlust.recipe-app-api.author="samderlust@gmail.com"

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

# add new user -D only run, restrict all other permissions
RUN adduser -D user
USER user

