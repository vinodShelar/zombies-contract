// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

library SafeMath {
    function multiply(uint256 a, uint256 b) internal pure returns (uint256) {
        if (a == 0) {
            return 0;
        }
        uint256 c = a * b;
        require(c / a == b, "Multiplication overflow");
        return c;
    }

    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "Addition overflow");
        return c;
    }

    function subtract(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b <= a, "Subtraction underflow");
        return a - b;
    }
}

contract Calculator {
    uint32 public result = 0;

    using SafeMath for uint256;

    function add(uint32 num) public {
        uint256 tempResult = SafeMath.add(uint256(result), uint256(num));
        require(tempResult <= type(uint32).max, "Addition overflow in Calculator");
        result = uint32(tempResult);
    }

    function subtract(uint32 num) public {
        uint256 tempResult = SafeMath.subtract(uint256(result), uint256(num));
        result = uint32(tempResult);
    }

    function multiply() public {
        uint256 tempResult = SafeMath.multiply(uint256(result), 4801);
        require(tempResult <= type(uint32).max, "Multiplication overflow in Calculator");
        result = uint32(tempResult);
    }

    function getResult() public view returns (uint32) {
        return result;
    }
}