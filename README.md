# example

This awesome project is powered by [Amber Framework](https://amberframework.org/).

## Getting Started

These instructions will get you a copy of this project up and running on your local machine for development and testing purposes.

See [Production](#production) for notes on how to deploy the project on a live system.

## Prerequisites

Before using this project you need to install `crystal` and `amber`.

[See Crystal installation guide](https://crystal-lang.org/docs/installation/)

[See Amber installation guide](https://amberframework.org/guides/getting-started/Installation/README.md#installation)

## Usage

### Development

To setup your **development** settings edit `config/environments/development.yml` file.

To run amber server in a **development** enviroment:

```
shards install
amber db create migrate
amber watch
```

### Production

To setup your **production** settings use `amber encrypt`. [See encrypt command guide](https://amberframework.org/guides/getting-started/cli/encrypt.md#cli-encrypt)

To build and run a **production** release:

1. Add an environment variable `AMBER_ENV` with a value of `production`

```
export AMBER_ENV=production
```

2. Run these commands:

```
shards install --production
shards build --release
amber db create migrate
bin/example
```

### Tests

To run tests using [Garnet Spec](https://github.com/amberframework/garnet-spec/) suite:

1. Add an environment variable `AMBER_ENV` with a value of `test`

```
export AMBER_ENV=test
```

2. Run this command:

```
crystal spec
```

### Docker Compose

> **Note:** The Docker images are compatible with Heroku.

To set up the database and launch the server:

```
docker-compose up -d
```

To view the logs:

```
docker-compose logs -f
```

## Contributing

1. Fork it ( https://github.com/faustinoaq/example/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [faustinoaq](https://github.com/faustinoaq) Faustino Aguilar - creator, maintainer
