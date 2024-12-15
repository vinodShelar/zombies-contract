// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AddressExample {
    address public owner; 

    constructor() {
        owner = msg.sender;  
    }

    function getOwner() public view returns (address) {
        return owner;
    }
}
