// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// public example we have allready done in the previous calculator exanple but in case of private we are just using the names of variables in the nameof variables like we are using private variables
// now in this let looks into example of internal functional visibility in contracts
// For example whatever child has it would also be access by its parents as well...

contract BasicCalculator {
  uint public result;

  function add(uint256 a, uint b) internal  {
     result= a+ b;
  }

  function substract(uint256 a, uint256 b) internal  {
     result = a- b;
  }
}

contract AdvanceCalculator is BasicCalculator{
    function multiply(uint256 a, uint256 b) internal {
        result= a *b;
    }

    function  divide(uint256 a, uint256 b) internal  {
        result = a/b;
    }

    function performOperations(uint256 a, uint256 b, uint8 operation ) public  {
        if(operation == 0) add(a,b);
        else if (operation ==1) substract(a,b); 
        else if (operation==3) multiply(a,b); 
        else if (operation==4) divide(a,b);
        else revert("Invalid Operation");
    }

}