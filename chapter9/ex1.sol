// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 < 0.9.0;

contract ex9 {
    function getBlance(address _address) public view returns(uint) {
        return _address.balance;
    }

    function getMsgValue() public payable returns(uint) {
        return msg.value;
    }
}