// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 < 0.9.0;

contract Math {
    uint public total;

    function mul(uint _num1, uint _num2) public {
        total = _num1 * _num2;
    }
}