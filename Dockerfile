FROM python:latest

MAINTAINER denuk68

WORKDIR /var/www
COPY  . /var/www

RUN pip install -r requirements.txt

RUN cd app

ENTRYPOINT [ "python", "app/manage.py", "runserver", "0.0.0.0:8000" ]