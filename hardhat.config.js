require("@nomiclabs/hardhat-waffle");

const RINKEBY_PRIVATE_KEY = "0x2caf42750094f366a1a99467a05fee28ce498c30c8a3d57e000de04bde2bcd37";

module.exports = {
  solidity: "0.8.16",
  networks: {
    rinkeby: {
    url: `https://eth-rinkeby.alchemyapi.io/v2/YNL5iei4d-ZX6RAqGhPPh_9lNZTUBejh`,
    accounts: [RINKEBY_PRIVATE_KEY]
    }
  }
};
