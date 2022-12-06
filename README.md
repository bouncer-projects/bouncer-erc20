# Bouncer ERC20

## Deployed Contracts

### Goerli

- USDC: <https://goerli.etherscan.io/address/0x111F7ecAD08a6eFEB2BFd11C80C463c006dc6050>
- BNC: <https://goerli.etherscan.io/address/0x9A2477B114a6F93dDa5473c5C8B8197f301E3C24>
- ERC20: <https://goerli.etherscan.io/address/0x6E93da669b5f782086Fe64F81dA49f2141bae59B>

## Commands

### コンパイル

```bash
yarn compile
```

### デプロイ

```bash
# テストネットへデプロイ
npx hardhat run scripts/deploy.ts --network goerli

# verify & publish
npx hardhat verify --network goerli 検証したいコントラクトアドレス
npx hardhat verify --constructor-args argument.js --network goerli 検証したいコントラクトアドレス
```

### その他

```bash
# キャッシュクリア
npx hardhat clean
```
