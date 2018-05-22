# example

[![Amber Framework](https://img.shields.io/badge/using-amberframework-orange.svg)](https://amberframework.org)

This is a project written using [Amber](https://amberframework.org). Enjoy!

## Getting Started

These instructions will get you a copy of this project up and running on your local machine for development and testing purposes.

See [deployment](https://amberframework.gitbook.io/amber/deployment) for notes on how to deploy the project on a live system.

## Prerequisites

This project requires `crystal` and `amber` commands:

[See Crystal installation guide](https://crystal-lang.org/docs/installation/)

[See Amber installation guide](https://amberframework.gitbook.io/amber/guides/installation)

## Development

To start your Amber server:

1. Install dependencies with `shards install`
2. Create and migrate your database with `amber db create migrate`. Also see [creating the database](https://amberframework.gitbook.io/amber/guides/create-new-app#creating-the-database).

3. Start Amber endpoint with `amber watch`

Now you can visit http://localhost:3000/ from your browser.

Using Docker? Please [check amber docker guides](https://amberframework.gitbook.io/amber/guides/docker).

Ready to run in production? Please [check amber deployment guides](https://amberframework.gitbook.io/amber/deployment).

## Tests

To run tests using [Garnet Spec](https://github.com/amberframework/garnet-spec/) suite:

```
crystal spec
```

## Contributing

1. Fork it ( https://github.com/faustinoaq/example/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [faustinoaq](https://github.com/faustinoaq) Faustino Aguilar - creator, maintainer
