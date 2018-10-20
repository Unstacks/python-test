FROM python:3.5

WORKDIR /app

ADD requirements.txt /app/
RUN pip install -r requirements.txt

ADD . /app/

EXPOSE 80

CMD ["uwsgi", "--http", "0.0.0.0:80", "-M", "-p", "4", "--enable-threads", "-w", "app:app"]
