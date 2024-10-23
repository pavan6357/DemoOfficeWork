FROM python:3.8-slim
LABEL maintainer="Vijaya Krishna A"

RUN mkdir -p /usr/src/app
RUN apt-get update \
    && apt-get -y install libpq-dev gcc 

WORKDIR /usr/src/app

COPY ./src /usr/src/app

RUN /usr/local/bin/python -m pip install --upgrade pip && pip install --no-cache-dir -r requirements.txt

RUN pip install psycopg2
RUN pip install gunicorn

ENV MODE dev
EXPOSE 8000
VOLUME /static
COPY ./src/static /static

CMD gunicorn -w 3 -b :8000 --threads 8 --timeout 600 demos.wsgi:application --reload