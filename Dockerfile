FROM python:3.6-stretch

EXPOSE 80

COPY . .

RUN pip install -r requirements.txt

ENTRYPOINT ["uwsgi", "--socket", "0.0.0.0:80", "--protocol=http", "-w", "app:app"]
