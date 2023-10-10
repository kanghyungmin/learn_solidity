// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.6.0;

contract ex3 {
    event Obtain(address from, uint amount); 

    function() external payable {
        emit Obtain(msg.sender, msg.value);
    }

    function getBalance(address _address) public view returns(uint) {
        return _address.balance;
    }

    function sendEther(address payable _address) public payable {
        _address.transfer(msg.value);
    }


}