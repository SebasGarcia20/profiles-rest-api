FROM python:3

ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY . /code/

RUN pip install --upgrade pip
COPY ./requirements.txt .
RUN pip install -r requirements.txt