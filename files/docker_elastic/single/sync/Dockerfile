FROM python:3.11
WORKDIR /app
COPY sync.py .
RUN pip install psycopg2-binary requests
CMD ["python", "sync.py"]
