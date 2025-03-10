FROM python:3.11

WORKDIR /my_docker_app

COPY . /app/

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 4000

CMD ["gunicorn", "--bind", "0.0.0.0:4000", "app.wsgi:application"]
