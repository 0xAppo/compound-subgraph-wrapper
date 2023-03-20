# Compound Subgraph Wrapper

A wrapper service that extends the Compound subgraph with custom resolvers.

## Usage

After cloning this repository, run the following to start the server process:

```sh
# Install dependencies
yarn

# Build the server 
yarn prepublish

# Run the server
node dist/index.js
```

## Development

During development, run the server with

```sh
yarn dev
```

so it automatically restarts as you make changes to the source code.

## License

Copyright &copy; 2019-2020 Graph Protocol, Inc.

This software is licensed under the [MIT license](./LICENSE-MIT).

Replace the mapped port in this command to suit subdomain

docker run -p 9500:9500 --env SUBGRAPH_QUERY_ENDPOINT=https://api.thegraph.com/subgraphs/name/0xappo/testing --env SUBGRAPH_SUBSCRIPTION_ENDPOINT=wss://api.thegraph.com/subgraphs/name/0xappo/testing testnet-wrapper:latest node dist/index.js
