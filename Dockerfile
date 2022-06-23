# syntax=docker/dockerfile:1

FROM python:3.10.4

COPY requirements.txt requirements.txt
RUN sudo apt-get install unixodbc unixodbc-dev
