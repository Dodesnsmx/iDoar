# Extend python3 Dockerfile
FROM python:3

# Make python verbose
ENV PYTHONUNBUFFERED 1
 
# Create code dir in container
RUN mkdir /code
 
# Set code dir to be the working directory
WORKDIR /code

ADD requirements.txt /code/
COPY requirements.txt /code/requirements.txt
RUN pip install -r requirements.txt

ADD . /code/