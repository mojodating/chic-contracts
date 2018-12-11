pragma solidity ^0.4.23;

import 'openzeppelin-solidity/contracts/token/ERC721/ERC721Full.sol';
import 'openzeppelin-solidity/contracts/token/ERC721/ERC721MetadataMintable.sol';

contract Marketplace is ERC721MetadataMintable {
    string public name = "Marketplace";
    string public symbol = "MP";

    constructor()
        ERC721MetadataMintable()
        ERC721Metadata(name,symbol)
        public 
    {}
}