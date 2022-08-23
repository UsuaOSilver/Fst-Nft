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
        const contract = await Contract.deploy();
        
        await contract.deployed();
        
        console.log(`contract deployed at ${contract.address}`);     
        
        // console.log("Verifying contract");
        
        // Tried this on Github issue but didn't work so follow hardhat docs
        // await hre.run("verify:verify", {
        //     address: 0x810D5fC2dE3795F47e8e74E9Efe26B2ce593e852,
        //     constructorArguments: [
        //         BASE_URI,
        //         TOKEN_NAME, 
        //         TOKEN_SYMBOL,
        //     ],
        // }); 
          
        // console.log("Contract verified");
  
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