// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 < 0.9.0;

contract ex2 {
    function quiz2(uint _num) public pure returns(uint){
        require(_num <= 5 , "happen error");
        return _num;
    }

}