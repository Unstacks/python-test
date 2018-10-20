FROM python:3.5

MAINTAINER joel@weirau.ch

WORKDIR /app

# Add requirements.txt hopefully for caching purposes...?
ADD requirements.txt /app/
# pip install
RUN pip install -r requirements.txt

# Add the rest of the source files
ADD . /app/

EXPOSE 80

CMD ["uwsgi", "--http", "0.0.0.0:80", "-M", "-p", "4", "--enable-threads", "-w", "app:app"]
