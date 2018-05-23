# amber-latest-app-example

[![Amber Framework](https://img.shields.io/badge/using-amberframework-orange.svg)](https://amberframework.org)

This is a project written using [Amber](https://amberframework.org). Enjoy!

## Getting Started

These instructions will get you a copy of this project up and running on your machine for development and testing purposes.

Please see [deployment](https://amberframework.gitbook.io/amber/deployment) for more notes on deploying the project in production.

## Prerequisites

This project requires [Crystal](https://crystal-lang.org/), see [installation guide](https://crystal-lang.org/docs/installation/).

## Development

To start your Amber server:

1. Install dependencies with `shards install`
2. Build executables with `shards build`
3. Create and migrate your database with `bin/amber db create migrate`. Also see [creating the database](https://amberframework.gitbook.io/amber/guides/create-new-app#creating-the-database).
4. Start Amber server with `bin/amber watch`

Now you could visit http://localhost:3000/ from your browser.

Something doesn't work? Please check [Amber troubleshooting](https://amberframework.gitbook.io/amber/troubleshooting).

Using Docker? Please check [Amber Docker guides](https://amberframework.gitbook.io/amber/guides/docker).

Ready to run in production? Please check [Amber deployment guides](https://amberframework.gitbook.io/amber/deployment).

## Tests

To run tests using [Garnet Spec](https://github.com/amberframework/garnet-spec/) suite:

```
crystal spec
```

## Contributing

1. Fork it ( https://github.com/faustinoaq/amber-latest-app-example/fork )
2. Create your feature branch ( `git checkout -b my-new-feature` )
3. Commit your changes ( `git commit -am 'Add some feature'` )
4. Push to the branch ( `git push origin my-new-feature` )
5. Create a new Pull Request

## Contributors

- [faustinoaq](https://github.com/faustinoaq) Faustino Aguilar - creator, maintainer
