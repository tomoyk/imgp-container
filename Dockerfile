FROM python:3.12-slim
RUN apt update -y && \
    apt install build-essential zlib1g-dev libjpeg-dev -y && \
    pip install imgp
WORKDIR /work
ENTRYPOINT ["imgp"]
