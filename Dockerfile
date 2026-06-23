FROM python:3.12-alpine

WORKDIR /app

# system dependencies (important for pip installs)
RUN apk add --no-cache gcc musl-dev

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["python", "app.py"]
