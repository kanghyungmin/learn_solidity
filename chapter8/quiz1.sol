// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 < 0.9.0;

contract quiz1 {
    modifier numMorethan5(uint _num) {
        require(_num > 5, "");
        _;
    }
    function value(uint _num) public pure numMorethan5(_num) returns(uint) {
        return _num;
    }
}