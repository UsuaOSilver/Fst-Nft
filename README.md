# Premier NFT Collection

### Tech stack:
- OppenZeppelin
- Hardhat
- Pinata
- React
- IPFS
- Alchemy
- Foundry
- Echidna
- Slither

### What I learn:
- How BAYC, CryptoPunk, NounsDAO design their smart contracts. These are some of the A+ projects with strong security guarantees, secured metadata, creativity, and elegance according to the [NFT smart contract rating](https://docs.google.com/spreadsheets/d/1vv1FNTSgIlAyeOg7lIYyChy9b9XYHJlS-spA7vYSSgk/edit#gid=0) of the CTO of RTFKT, [Samuel Cardillo](http://twitter.com/CardilloSamuel).
- The pros and cons of different ERC721 implementations from OppenZeppelin (ERC721 OP), Rari Capital (ERC721 solmate) and the Azuki team (ERC721A).
- Implement the ERC721 OP standard contract, it's utilities and extensions.
- Write overloading functions.
- Implement safety features using `_safeMint()`.
- Upload png files to IPFS through Pinata and generate metadata files for each NFT automatically.
- Build and deploy a Hardhat project from scratch with the help of Hardhat doc.
- The importance of commenting and documenting (coding best practices).

Etherscan verification: https://rinkeby.etherscan.io/address/0x810D5fC2dE3795F47e8e74E9Efe26B2ce593e852#code

## Solidity tests with Foundry
Updated Aug 15, 2022.

repo: https://github.com/UsuaOSilver/fst-nft-Foundry/blob/master/test/FstNFT.t.sol


## Fuzz test with Echidna
Updated Aug 23rd, 2022.

- Learn Docker to install echidna, use trailofbits/eth-security-toolbox in, and mount local folder to Docker container.

![image](https://user-images.githubusercontent.com/48362877/186281144-436830a4-9efb-4473-94ee-7b4b970666e8.png)

## Static testing with Slither
Updated Aug 28th, 2022.
Produced an audit report for a peer repo using Slither.
[Crystalized_VinhLe_NFT_Audit_Report__Silver_Consulting.pdf](https://github.com/UsuaOSilver/fst-nft/files/9444102/Audit_Crystalized_VinhLe_NFT.pdf)

