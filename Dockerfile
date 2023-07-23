FROM node:16

# Add the repository sources to the image
COPY . /compound-subgraph-wrapper
WORKDIR /compound-subgraph-wrapper

# Install dependencies and build server
RUN yarn --pure-lockfile && yarn prepublish

ENV SUBGRAPH_QUERY_ENDPOINT=https://api.thegraph.com/subgraphs/name/lodestar-finance/lodestar-finance-v1-subgraph
ENV SUBGRAPH_SUBSCRIPTION_ENDPOINT=wss://api.thegraph.com/subgraphs/name/lodestar-finance/lodestar-finance-v1-subgraph

ENTRYPOINT ["node", "dist/index.js"]
