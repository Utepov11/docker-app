# Используем Python 3.11
FROM python:3.11

# Указываем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем файлы проекта внутрь контейнера
COPY . .

# Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Открываем порт
EXPOSE 4000

# Запускаем Gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:4000", "my_docker_app.wsgi:application"]
