// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.6.0;

import '@openzeppelin/contracts/token/ERC20/ERC20.sol';
import '@openzeppelin/contracts/token/ERC20/ERC20Detailed.sol';
import '@openzeppelin/contracts/token/ERC20/ERC20Mintable.sol';
import '@openzeppelin/contracts/crowdsale/Crowdsale.sol';
import "@openzeppelin/contracts/crowdsale/emission/MintedCrowdsale.sol";
import '@openzeppelin/contracts/crowdsale/distribution/PostDeliveryCrowdsale.sol';
import '@openzeppelin/contracts/token/ERC20/IERC20.sol';

contract TheAllyICO is Crowdsale, MintedCrowdsale {
    constructor(
        uint256 rate,    // rate in TKNbits
        address payable wallet,
        IERC20 token
    )
        MintedCrowdsale()
        Crowdsale(rate, wallet, token)
        public
    {

    }
}

