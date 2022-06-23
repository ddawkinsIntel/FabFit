FROM --platform=linux/amd64 python:3.10.4

RUN apt-get update -y
RUN apt-get install unixodbc unixodbc-dev
RUN apt-get update

COPY ./FabFit /FabFit/
COPY ./requirements.txt /FabFit/

WORKDIR /djangonoguero
RUN pip install --no-cache-dir -r requirements.txt
