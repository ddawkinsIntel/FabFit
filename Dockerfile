FROM python:3.10-buster
RUN apt-get update -y
RUN apt-get install unixodbc unixodbc-dev -y
RUN apt-get update
RUN pip install --no-cache notebook jupyterlab
ENV HOME=/tmp

# create user with a home directory
ARG NB_USER
ARG NB_UID
ENV USER ${NB_USER}
ENV HOME /home/${NB_USER}

RUN adduser --disabled-password \
    --gecos "Default user" \
    --uid ${NB_UID} \
    ${NB_USER}
WORKDIR ${HOME}

# Make sure the contents of our repo are in ${HOME}
COPY . ${HOME}
USER root
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}

RUN echo ls
