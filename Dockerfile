FROM python:3.8-slim

RUN apt update -y && apt install awscli -y
WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

ENV MLFLOW_TRACKING_URI=""
ENV MLFLOW_TRACKING_USERNAME=""
ENV MLFLOW_TRACKING_PASSWORD=""

EXPOSE 8080

CMD ["python3","app.py"]