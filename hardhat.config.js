require("@nomiclabs/hardhat-waffle");
require("@nomiclabs/hardhat-ethers");
require("@nomiclabs/hardhat-etherscan");
let secrets = require("./secrets.json");

module.exports = {
  solidity: "0.8.10",
  networks: {
    rinkeby: {
    url: secrets.url,
    accounts: [secrets.key]
    }
  },
  etherscan: {
    apiKey: "PSW8C433Q667DVEX5BCRMGNAH9FSGFZ7Q8",
  }
};
