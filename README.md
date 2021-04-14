# BitcoinSV Block Explorer

Docker Image packaging for Blockchain Explorer for BitcoinSV, supporting private chains with no history.

Previous versions would require block history of a minimum of 1 year unless run on _regtest_.

This would fail if you decided to run a private chain with less than 1 year of blocks, this can now be disabled using an environment variable.

For more information, please see the project repository [here](https://github.com/iangregsondev/bsv-explorer)

## Prerequisities

In order to run this container you will need RPC access to a bsv full node.

## Usage

You can simply run the container with all recommended parameters

```shell
docker run --rm \
    -e BTC_RPC_HOST=127.0.0.1 \
    -e BTC_RPC_PORT=8332 \
    -e BTC_RPC_USER=bitcoind \
    -e BTC_RPC_PASSWORD=too-many-secrets \
    -e DISABLE_HISTORICAL_DATA=true \
    -e DISABLE_EXCHANGE_RATES=true \
    iangregsondev/bsv-explorer
```

or use docker-compose / kubernetes

### Environment variables

This image uses environment variables for configuration.

|Available variables       |Default value        |Description                                         |
|--------------------------|---------------------|----------------------------------------------------|
|`BTC_RPC_HOST`            |no default           |The RPC host address for bitcoind (required)        |
|`BTC_RPC_PORT`            |no default           |The RPC port number for bitcoind  (required)        |
|`BTC_RPC_USER`            |no default           |The RPC username (required)                         |
|`BTC_RPC_PASSWORD`        |no default           |The RPC password (required)                         |
|`ELECTRUMX_HOST`          |no default           |ElectrumX Server host address (optional)            |
|`ELECTRUMX_PORT`          |no default           |ElectrumX Server port number (optional)             |
|`DISABLE_HISTORICAL_DATA` |false                |Disable historical block statistics (optional)      |
|`DISABLE_EXCHANGE_RATES`  |false                |Disable exchange rate lookup (optional)             |


## Available

* [GitHub](https://github.com/iangregsondev/bsv-explorer-docker)
* [Docker Hub](https://hub.docker.com/repository/docker/iangregsondev/bsv-explorer)

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the
[tags on this repository](https://github.com/iangregsondev/bsv-explorer/tags).

## Authors

* **Ian Gregson** - *This fork*  - [iangregsondev](https://github.com/iangregsondev)
    * Website: https://iangregson.dev
    * Twitter: [@iangregsondev](https://twitter.com/iangregsondev)
    * LinkedIn: [@iangregsondev](https://www.linkedin.com/in/iangregsondev)

##### Previous work

* **Mohammadreza** - [mohammadrezaprw](https://github.com/mohammadrezaprw)
* **Muhammad Waqas Raza** - [waqas64](https://github.com/waqas64)
* **Dan Janosik** - *Initial work* - [janoside](https://github.com/janoside)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
