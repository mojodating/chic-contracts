pragma solidity ^0.4.23;

import 'openzeppelin-solidity/contracts/token/ERC20/ERC20.sol';
import 'openzeppelin-solidity/contracts/token/ERC20/ERC20Capped.sol';
import 'openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol';

contract JOToken is ERC20, ERC20Detailed, ERC20Capped {
    string public name = "JOToken";
    string public symbol = "JO";
    uint8 public decimals = 18;
    uint public INITIAL_SUPPLY = 1000000000 * (10 ** uint(decimals));

    constructor()
        ERC20Capped(INITIAL_SUPPLY)
        ERC20Detailed(name, symbol, decimals)
        ERC20()
        public 
    {
        mint(msg.sender, INITIAL_SUPPLY);
    }
}
