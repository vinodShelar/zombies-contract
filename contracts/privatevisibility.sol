// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract BasicCalculator {
    uint public result;

    function add(uint256 a, uint256 b) internal {
        result = a + b;
    }

    function substract(uint256 a, uint256 b) internal{
        result = a - b;
    }
}

contract AdvancedCalculator is BasicCalculator{
    function multiply(uint256 a, uint256 b) internal {
        result = a * b;
    }
    function divide (uint256 a, uint256 b) internal {
        result = a / b;
    }

    function performOperation(uint256 a, uint256 b, uint8 operation) public  {
        if(operation == 0) add(a ,b);
        if(operation == 1) substract (a ,  b );
        if(operation == 2) multiply (a,  b ) ;
        if(operation == 3) divide ((a),   b );
    }
}