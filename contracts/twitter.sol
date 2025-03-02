// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Twiiter {
    // mapping(address => string) tweets;

    // function createTweet(string memory _tweet) public {
    //     tweets[msg.sender] = _tweet;
    // }
    mapping (address => string) tweets;

    function createTweet(string memory _tweet) public returns(address, string memory){
        tweets[msg.sender]=_tweet;
        return (msg.sender, "");
    }

    
    // solidity public function

    // pure is basically used for no access to blockchain like block.timestamp, msg.sender
    // view reads the block chain but does nit modify it
    // payable==> allows function to receive ether

    function sayHello() public view returns (string memory ) {
        return  "Hello world";
    }

    // solidity private function
    function  _privateFunction() private pure returns(string memory) {   
        return "Hello, this is from private function!!!";
    }

    // solidity internal function
    function _internalFunction() internal view returns (string memory){
        return "This is an internal function";
    }

    // solidity external functions
    function _externalFucntion () external view returns(string memory) {
        return  tweets[msg.sender];
    }

    // fallback and receive functions in solidity
    // These functions are basically used for how a contract receives a ether and how to handle unknown function calls


    // The receive() function
    // The receive() function is executed when a contract receives Ether without data (i.e., a simple transfer).

}