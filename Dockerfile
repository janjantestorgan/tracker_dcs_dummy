FROM python:3.9

RUN apt-get update && apt-get -y upgrade

WORKDIR /usr/src/app

# install dependencies

COPY requirements ./requirements
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements/docker.txt
#RUN pip install --no-cache-dir -r requirements.txt

# install this package
COPY dummy ./dummy



#COPY tracker_dcs_web/web_server ./web_server
COPY setup.py ./
RUN pip install -e .
ENV PYTHONUNBUFFERED 1

