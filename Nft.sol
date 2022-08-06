// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract FstNFT is IERC721 {
    /**
    1. Compatible with ERC-721 standard -  10 points.
    
    You can use Openzeppelin, Solmate, or your own interface to  do so.
    
    2. Your NFT should have a total supply of 100 tokens - 5 points
        
        This means that only 100 tokens can be minted and no more.
        
    3.  Your NFT should hold an image that is hosted on IPFS - 5 points.
        
        You are free to use any asset.
        
    4. User can only mint the NFT if they provided at least 0.01 ETH - 5 points
        
        This means that you need to make the cost of minting your NFT 0.01 ETH.
        
    5. No user can mint more than 5 NFTs in a single transaction - 5 points
        
        Hint: You might wanna try method overloading to keep things optimized and DRY here.
        
    6. Deployed address is set as “owner” upon deployment and can trigger refund function 
    which will allow them to receive all the funds collected by the NFT contract from the sale. 
    - 10 points 
    */
    
    uint public totalSupply = 100;
    
    constructor(address _nft, uint _nftId) {
        nft = IERC721(_nft);
        nftId = _nftId;
    }
    
    function _mint(address _to, uint _nftId) public {
        require(msg.value >= 0.01 ether, "You must send at least 0.01 ether");
    }
    
    function refund() onlyOwner public {
        nft.safeTransferFrom(address(this), )
    }
    
}