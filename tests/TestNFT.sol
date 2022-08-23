// SPDX-License-Identifier: MIT
pragma solidity 0.8.16;

import "../contracts/NFT.sol";

contract TestNFT is FstNFT {
    address echidna_caller = msg.sender;
    
    FstNFT nft = new FstNFT("FstNFT", "FST", "baseURI");
    
    function echidna_max_supply_under_100() public view returns (bool) {
        return (totalSupply() <= 100);
    }
}