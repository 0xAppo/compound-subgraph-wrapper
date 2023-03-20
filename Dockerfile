FROM node:16

# Add the repository sources to the image
COPY . /compound-subgraph-wrapper
WORKDIR /compound-subgraph-wrapper

# Install dependencies and build server
RUN yarn --pure-lockfile && yarn prepublish

ENV SUBGRAPH_QUERY_ENDPOINT=https://api.thegraph.com/subgraphs/name/0xappo/testing
ENV SUBGRAPH_SUBSCRIPTION_ENDPOINT=wss://api.thegraph.com/subgraphs/name/0xappo/testing

ENTRYPOINT ["node", "dist/index.js"]
