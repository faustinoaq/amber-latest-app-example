FROM amberframework/amber:v0.7.2

WORKDIR /app

COPY . /app

RUN shards build

CMD bin/amber watch
