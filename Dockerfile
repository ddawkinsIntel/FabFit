# syntax=docker/dockerfile:1

FROM python:3.10.4

RUN sudo apt-get install unixodbc unixodbc-dev
COPY requirements.txt requirements.txt
