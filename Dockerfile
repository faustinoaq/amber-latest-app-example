FROM amberframework/amber:v0.7.2

WORKDIR /app

COPY . /app

CMD shards build --production; bin/amber watch
