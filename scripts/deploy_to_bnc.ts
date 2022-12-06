import { ethers } from "hardhat";

async function main() {
  const name = "Bouncer"
  const symbol = "BNC"
  const decimal = 18

  const BouncerErc20 = await ethers.getContractFactory("BouncerErc20");
  const contract = await BouncerErc20.deploy(name, symbol, decimal);

  await contract.deployed();

  console.log(`Deployed to ${contract.address}`);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
