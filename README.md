## Install Foundry

```bash

curl -L https://foundry.paradigm.xyz | bash ##then run

foundryup

```

## Install libraries

```bash

forge install foundry-rs/forge-std --no--commit

forge install OpenZeppelin/openzeppelin-contracts@v4.3.2 --no-commit

```

## Deployment

First, import private key

```bash

cast wallet import defaultKey --interactive

```

Second, set the rpc url in .env file, for example:

```
SKALE_TITAN_HUB_RPC_URL=https://testnet.skalenodes.com/v1/aware-fake-trim-testnet
```

run

```bash

source .env

```

then deploy MyNFT contract, replace 0x755... with your public key

```bash

forge script DeployMyNFT --account defaultKey --sender 0x755AC4E90c24135f1B7f73AeEA6a7ff42b07dd94 --rpc-url $SKALE_TITAN_HUB_RPC_URL --broadcast --legacy

```

Third, set your environment variables in .env, see .env.example file, run:

```bash

source .env

forge script DeployMarketplace --account defaultKey --sender 0x755AC4E90c24135f1B7f73AeEA6a7ff42b07dd94 --rpc-url $SKALE_TITAN_HUB_RPC_URL --broadcast --legacy

```

## Contract addresses deployed to Titan AI Hub testnet

MyNFT contract address: 0xD887c912a722D2AC4ACB21E3a3A774651Bc2cF57 <br>
Marketplace contract address: 0xE782Ed2880675cc398b23FB405EB85E1502F89b5
