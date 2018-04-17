FROM amberframework/amber:v0.7.2

WORKDIR /app

COPY . /app

RUN shards build --production

CMD bin/amber watch
