// SPDX-License-Identifier: MIT
pragma solidity 0.8.16;

import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

/** 1. Compatible with ERC-721 standard -  10 points.
    
    You can use Openzeppelin, Solmate, or your own interface to  do so.
 */
contract FstNFT is ERC721Enumerable, Ownable {
    using Counters for Counters.Counter;
    using Strings for uint256;
    
    /** 3.  Your NFT should hold an image that is hosted on IPFS - 5 points.
        You are free to use any asset.    
    */
    // const pinataSDK = require('@pinata/sdk');
    // const pinata = pinataSDK('ea811df3225b5fe64c7d', '8337d4d34c12c32a2593ca517c59aa0c02f7ce7b015f1eabf53f7343de4d78af');
    
    /** 2. Your NFT should have a total supply of 100 tokens - 5 points
        This means that only 100 tokens can be minted and no more.
    */
    uint256 public TOTAL_SUPPLY = 100;
    
    /** 4. User can only mint the NFT if they provided at least 0.01 ETH - 5 points
        This means that you need to make the cost of minting your NFT 0.01 ETH.
    */
    uint256 public constant PRICE = 10000000000000000; // 0.01 ETH
    
    /** 5. No user can mint more than 5 NFTs in a single transaction - 5 points
        Hint: You might wanna try method overloading to keep things optimized and DRY here.
    */
    uint256 public constant maxNftPurchase = 5;
    
    string public URI;
    
    constructor(string memory name, string memory symbol, string memory baseURI) ERC721(name, symbol) {
        URI = baseURI;
    }
    
    function mintNft(uint numberOfTokens) public payable {
        uint256 nftMinted = totalSupply();
        uint256 remainingSupply = TOTAL_SUPPLY - nftMinted;
        uint256 totalPrice = numberOfTokens * PRICE;
        
        require(numberOfTokens <= maxNftPurchase, "You can only mint up to 5 NFTs in a single transaction");
        require(nftMinted + numberOfTokens <= TOTAL_SUPPLY, 
                string.concat("Sold out! Only ", Strings.toString(remainingSupply), " NFT(s) left.")
                );
        require(msg.value >= totalPrice, string.concat("You must send at least ", Strings.toString(totalPrice), " ether"));
        
        uint256 nftId = nftMinted + 1;
        
        for (uint i = 0; i < numberOfTokens; i++) {
            _safeMint(msg.sender, nftId + i);
        }
    }
    
    /**
    6. Deployed address is set as “owner” upon deployment and can trigger refund function 
    which will allow them to receive all the funds collected by the NFT contract from the sale. 
    - 10 points 
    */
    function refund() public onlyOwner {
        uint balance = address(this).balance;
        payable(msg.sender).transfer(balance);
    }
    
}