require("@nomiclabs/hardhat-waffle");

const INFURA_API_KEY = "8f32a309458642f3bbecf3e262a3c889";

const ROPSTEN_PRIVATE_KEY = "2caf42750094f366a1a99467a05fee28ce498c30c8a3d57e000de04bde2bcd37";

module.exports = {
  solidity: "0.8.16",
  networks: {
    ropsten: {
    url: `https://ropsten.infura.io/v3/${INFURA_API_KEY}`,
    accounts: [ROPSTEN_PRIVATE_KEY]
    }
  }
};
