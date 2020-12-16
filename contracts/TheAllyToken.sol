pragma solidity >=0.5.0 <0.6.0;

import '@openzeppelin/contracts/token/ERC20/ERC20.sol';
import '@openzeppelin/contracts/token/ERC20/ERC20Detailed.sol';
import '@openzeppelin/contracts/token/ERC20/ERC20Mintable.sol';
import '@openzeppelin/contracts/token/ERC20/ERC20Pausable.sol';

// contract TheAllyToken is MintableToken, PausableToken, DetailedERC20 {
//     constructor(string memory _name, string _symbol, uint8 _decimals)
//         DetailedERC20(_name, _symbol, _decimals)
//         public
//     {

//     }
// }

contract TheAllyToken is ERC20Mintable, ERC20Pausable, ERC20Detailed {
    constructor(string memory _name, string memory _symbol, uint8 _decimals)
        ERC20Detailed(_name, _symbol, _decimals)
        public
    {

    }
}