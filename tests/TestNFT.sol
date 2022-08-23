// SPDX-License-Identifier: MIT
pragma solidity 0.8.10;

import "../contracts/NFT.sol";

contract TestNFT is FstNFT {
        
    function echidna_max_supply_under_100() public view returns (bool) {
        return(totalSupply() <= 100);
    }
}
