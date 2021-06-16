FROM python:3.10.0b2-alpine3.13

RUN echo "IMAGE INFORMATION" > KTH_PYTHON
RUN echo "Build date: `date`" >> KTH_PYTHON
RUN echo "Pyton: `python --version`" >> KTH_PYTHON
RUN echo "pip: `pip --version`" >> KTH_PYTHON
RUN echo "pipenv: `pipenv --version`" >> KTH_PYTHON

RUN cat KTH_PYTHON
