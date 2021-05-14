require('@openzeppelin/test-helpers/configure')({ provider: web3.currentProvider, environment: 'truffle' })
const { singletons, BN } = require('@openzeppelin/test-helpers')

const ICTToken = artifacts.require("ICTToken")


module.exports = async function (deployer, network, accounts) {
  console.log(`network name: ${network}`)
  if (network === 'development') {
    // In a test environment an ERC777 token requires deploying an ERC1820 registry
    await singletons.ERC1820Registry(accounts[0])
  }

  /***
   * ICTToken 
   */
  const totalSupply = new BN("1 428 600 000")
  const tokenReserve = new BN("180 660 460")
  const tokenToOffer = new BN("124 793 954")
  const tokenToDistribute = new BN("1 123 145 586")
  const tokenName = "ICTToken"
  const tokenSymbol = "ICTT"
  const tokenReserveAddress = "0xc5af4aA1359633F71d8c6Cb7404D46c8415C8D86"

  await deployer.deploy(ICTToken, tokenName, tokenSymbol, totalSupply)
  const _token = await ICTToken.deployed()
}