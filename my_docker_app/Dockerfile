FROM python:3.11

WORKDIR /app

COPY . /app/

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 4000

CMD ["gunicorn", "--bind", "0.0.0.0:4000", "my_docker_app.wsgi:application"]
