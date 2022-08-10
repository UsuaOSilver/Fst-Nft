const hre = require("hardhat");
const BASE_URI = "ipfs://QmeWPFbJoxYs6UTwZchf76f8MFSgtdEZRpRrY2txGCN6SA";
const TOKEN_NAME = "First";
const TOKEN_SYMBOL = "FST";

async function main() {
    try {
        const [deployer] = await ethers.getSigners();

        console.log("Deploying contracts with the account:", deployer.address);

        console.log("Account balance:", (await deployer.getBalance()).toString());
        
        const Contract = await hre.ethers.getContractFactory("FstNFT");
        const contract = await Contract.deploy(BASE_URI, TOKEN_NAME, TOKEN_SYMBOL);
        
        await contract.deployed();
        
        console.log(`contract deployed at ${contract.address}`);     
    } catch (error) {
        console.log(error);
    }
}

main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    });