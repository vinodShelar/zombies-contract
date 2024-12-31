// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract PublicVisibilityContract {
    uint256 public  number = 42;

    // function to setNumnber which will be public
    function setNumber(uint256 _number) public {
        number = _number;
    }
}