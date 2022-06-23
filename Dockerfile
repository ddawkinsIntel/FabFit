FROM ubuntu

RUN apt-get update -y && \ 
    apt-get install unixodbc unixodbc-dev
