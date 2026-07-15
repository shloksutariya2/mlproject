FROM python:3.8-slim

# Install system dependencies required for compiling ML libraries
RUN apt-get update && apt-get install -y build-essential

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

CMD ["python", "application.py"]
