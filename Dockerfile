FROM python:3.12.6-slim-bookworm
LABEL org.opencontainers.image.authors="Zhang Zhang <zhang.zhang123@imperial.ac.uk>, Brython Caley-Davies <bc2918@ic.ac.uk>"

WORKDIR /usr/src/app

RUN apt-get update && apt-get install gcc -y

COPY requirements.txt ./
RUN pip install -r requirements.txt

COPY . .

CMD ["python3", "server/server.py"]