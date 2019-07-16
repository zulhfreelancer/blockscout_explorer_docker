## [WIP] - BlockScout Docker Compose

This repository contains Docker Compose resources to run BlockScout, an open source Ethereum blockchain explorer. Still work in progress. I'm testing using Goerli testnet here.

### Motivation

The [built-in BlockScout support in Geth 1.9](https://github.com/ethereum/go-ethereum/pull/18261) was a great news. Unfortunately, that could only work if we are using `puppeth`.

For me, I'm not using `puppeth` for my private blockchain setup. Hence, I need to figure out how to run BlockScout without `puppeth`.

### Design

I prefer to separate these 3 components rather than putting them in one container ([link](https://github.com/rjl493456442/go-ethereum/blob/34bbfd840be0724d9ca09d5431927b9c7bc15ad3/cmd/puppeth/module_explorer.go#L33), [link](https://hub.docker.com/r/puppeth/blockscout/dockerfile)):

- Geth (with volume)
- Postgres (with volume)
- Explorer

I believe Docker Compose could help me separate them to achieve the design above.
