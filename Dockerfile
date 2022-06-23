FROM --platform=linux/amd64 python:3.10-buster

RUN apt-get update -y
RUN apt-get install unixodbc unixodbc-dev -y
RUN apt-get update

RUN pip install --no-cache-dir -r requirements.txt
