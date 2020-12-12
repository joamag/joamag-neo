FROM hivesolutions/python:latest

LABEL version="1.0"
LABEL maintainer="João Magalhães <joamag@gmail.com>"

EXPOSE 8080

ENV LEVEL INFO
ENV SERVER netius
ENV SERVER_ENCODING gzip
ENV HOST 0.0.0.0
ENV PORT 8080
ENV PYTHONPATH /src

ADD requirements.txt /
ADD src /src

RUN pip install -r /requirements.txt && pip install --upgrade netius

CMD ["/usr/bin/python", "/src/joamag_neo/main.py"]
