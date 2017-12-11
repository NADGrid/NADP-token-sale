const NADPPresale = artifacts.require("./NADPPresale.sol")

module.exports = function(deployer, network, accounts) {
  const startTime = web3.eth.getBlock(web3.eth.blockNumber).timestamp + 60 * 10 // 10 min in the future
  const endTime = startTime + (60 * 60 * 24 * 30) // 30 days
  const rate = new web3.BigNumber(450)
  const cap = new web3.BigNumber(web3.toWei(21000000 / 450, "ether")) // 21000000 NADP in total
  const wallet = '' // TODO: fill in gnosis multisig wallet address

  deployer.deploy(NADPPresale, cap, startTime, endTime, rate, wallet)
};
