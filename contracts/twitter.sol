// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Twiiter {
    mapping(address => string) tweets;

    function createTweet(string memory _tweet) public {
        tweets[msg.sender] = _tweet;
    }
}