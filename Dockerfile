FROM python:3.13-slim

LABEL version="1.0"
LABEL maintainer="João Magalhães <joamag@gmail.com>"

EXPOSE 8080

ENV LEVEL=INFO
ENV SERVER=netius
ENV SERVER_ENCODING=gzip
ENV HOST=0.0.0.0
ENV PORT=8080
ENV PYTHONPATH=/src

ADD requirements.txt /
ADD src /src

RUN pip install --no-cache-dir -r /requirements.txt && pip install --no-cache-dir --upgrade netius

CMD ["/usr/local/bin/python", "/src/joamag_neo/main.py"]
