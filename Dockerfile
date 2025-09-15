FROM python:3.10-slim

# Install build tools
RUN apt-get update && apt-get install -y \
    build-essential \
    gcc \
    python3-dev \
    libpq-dev \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY requirements.txt .

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . .

CMD ["gunicorn", "--bind", "0.0.0.0:8000", "mysite.wsgi:application"]
