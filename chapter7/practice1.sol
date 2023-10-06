// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 < 0.9.0;

contract ex1 {
    function quiz1(uint _num) public pure returns(uint)  {
        if(_num >= 6) {
            revert("_num is greater than 6");
        } 
        return _num;
    }

}