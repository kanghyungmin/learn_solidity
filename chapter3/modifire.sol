// SPDX-License-Identifier: GPL-3.0

// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 < 0.9.0;

contract Ex3_11 {
    uint public a = 3;
    
    function myFun() public view returns(uint) {
        uint b = a +5;
        return b;
    }
}