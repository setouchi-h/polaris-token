# Polaris

## Address

- Polaris: 0x35B9B2B23f01452eab2095d074966F99A1d1aAd0
- PolarisToken: 0xAaf6A734114437b719c28cfd44c0b2B515eD29be

## Usage

### Deploy ERC20

```shell
$  forge script script/DeployTestSMP.s.sol:DeployTestSMP --rpc-url $BASE_SEPOLIA_RPC_URL --broadcast --private-key <your private key>
```

### Deploy ERC721

```shell
$ forge script script/DeployTestERC721.s.sol:DeployTestERC721 --rpc-url $BASE_SEPOLIA_RPC_URL --broadcast --private-key <your private key>
```

### Mint ERC20

Everyone can mint because it is a test asset.

```shell
$ cast send 0xAaf6A734114437b719c28cfd44c0b2B515eD29be "mint(address,uint256)" <recipient> <amount> --rpc-url $BASE_SEPOLIA_RPC_URL  --private-key <your private key>
```

or

```shell
$ forge script script/Interactions.s.sol:MintPolarisToken --rpc-url $BASE_SEPOLIA_RPC_URL --private-key <your private key> --broadcast
```

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```

## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

- **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
- **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
- **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
- **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/
