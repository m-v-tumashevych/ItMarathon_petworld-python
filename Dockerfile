FROM python:3.11-slim

COPY pet-project ./
WORKDIR /pet-project
COPY requirements.txt ./
RUN pip install --no-cache-dir --upgrade -r requirements.txt
EXPOSE 7000
CMD ["gunicorn", "-b", "0.0.0.0:7000", "main:main_app"]