// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AddressExample {
    address public owner;
    constructor(){
        owner = msg.sender;
    }

    // Event for tracking deposits
    event Deposited(address indexed  sender, uint amount);
    // Event for tracking withdrawans
    event Withdrawn(address indexed receiver, uint amount);
    
    // Function to receive Ether
    receive() external payable { 
        emit  Deposited(msg.sender, msg.value);
    }

    // get balance of this acc
    function getBalance() public view returns (uint) {
         return address(this).balance;
    }

    // withdraw all funds to the owner add
    function withdraw() public {
        require(msg.sender == owner, "Caller is not owner");
        uint balance = address(this).balance;
        payable(owner).transfer(address(this).balance);
        emit  Withdrawn(owner, balance);
    }

    // send ether to user defined address
    function sendTo(address payable _to, uint _amount) public {
       require(msg.sender == owner, "Only owner can send");
       require(address(this).balance >= _amount, "Insufficient balance");
         _to.transfer(_amount);
    emit Withdrawn(_to, _amount);
    }
}
