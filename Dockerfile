FROM python:3.10.0b2-alpine3.13

RUN apk add bash && \ 
    pip install --upgrade pip setuptools pipenv && \
    rm -r /root/.cache \
    rm -rf /var/cache/apk/*
    
RUN echo "OS INFORMATION" > KTH_OS
RUN echo "Alpine version: `cat /etc/alpine-release `" >> KTH_OS
RUN echo "Build date: `date`" >> KTH_OS

RUN echo "PYTHON INFORMATION" > KTH_PYTHON
RUN echo "Build date: `date`" >> KTH_PYTHON
RUN echo "Pyton: `python --version`" >> KTH_PYTHON
RUN echo "pip: `pip --version`" >> KTH_PYTHON
RUN echo "pipenv: `pipenv --version`" >> KTH_PYTHON

RUN cat KTH_OS
RUN cat KTH_PYTHON
