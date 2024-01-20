FROM tiangolo/uvicorn-gunicorn:python3.11

LABEL maintainer="Viney Vean <viney.vean@gmail.com>"


# Copy requirements.txt and .env to /tmp directory
COPY ../app_required/fastapi/requirements.txt /tmp/requirements.txt
COPY ../app_required/fastapi/.env /tmp/.env

RUN pip install --no-cache-dir -r /tmp/requirements.txt

COPY ../app /app
