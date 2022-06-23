FROM --platform=linux/amd64 python:3.10-buster

WORKDIR /FabFit

RUN apt-get update -y
RUN apt-get install unixodbc unixodbc-dev -y
RUN apt-get update

RUN echo "$PWD"

COPY ./FabFit /FabFit/
COPY ./requirements.txt /FabFit/
 
RUN pip install --no-cache-dir -r requirements.txt
