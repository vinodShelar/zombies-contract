// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Array {
    // several ways to initailize the arr
    uint256[] public arr;
    uint256[] public arr2 = [1, 34, 131, 13];
    // fixed sized array, all elements initialize to 0 
    uint[10] public arrFixed;  //here we cannot have the more than 10 elements in an array

    function getArr() public view returns(uint256[] memory) {
        return arr;
    }

    // pushing method from last to arr
    function push(uint i) public {
        arr.push(i);
    }

    // pop method - to remove last element in an arr
    function pop() public {
        return arr.pop();  // will retern the last element of this array
    }

    // length of an arr
    function getLength() public view returns(uint256) {
        return arr.length;
    }

    // remove an element from an arr
    function delElementFromArr(uint index) public{
        // delete does not change the arr length
        // It resets the value at index to its default value
        // in this case 0
        delete arr[index];  //delete at the index of array
    }

    // create an new arr in memory
    function addNewArr() pure public {
        uint[] memory _newArr = new uint[](5);   /// this will allocate 256 bytes of memory and assign it to the new variable;                                             //this means all values in this array are initialized to 0.
    }

    // replace the value of the arr
    function setValueAtArr(uint index, uint val) public {
        arr[index] = val; /// here we update the value at that index
    }
}
