// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 < 0.9.0;


contract owner1 {

    address public owner;

    modifier onlyOwner() {
        require(owner == msg.sender, "Error: caller is not the owner");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function getBlance(address _address) public view onlyOwner() returns(uint) {
        return _address.balance;
    }

    function getMsgValue() public payable onlyOwner() returns(uint) {
        return msg.value;
    }

}