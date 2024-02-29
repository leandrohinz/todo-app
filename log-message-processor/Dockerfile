FROM python:3.6-alpine
## Un-comment below lines to install dependencies
#COPY requirements.txt ./
#RUN pip install --no-cache-dir -r requirements.txt
WORKDIR /app

RUN apk add --no-cache build-base

COPY requirements.txt .

RUN pip3 install -r requirements.txt

COPY main.py .

CMD ["python3","-u","main.py"]
