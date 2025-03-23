FROM python:3.9-slim

WORKDIR /app

COPY ./app /app
RUN pip install fastapi uvicorn jinja2

EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
