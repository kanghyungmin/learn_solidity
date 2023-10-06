// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 < 0.9.0;


contract quiz2 {
    modifier morethan10(uint _num) {
        require(_num>=10 , "_num must be greater than 10");
        _;
    }
    function minus10(uint _num) public pure morethan10(_num) returns(uint) {
        return _num -10;
    }
    function plus10(uint _num) public pure morethan10(_num)  returns(uint) {
        return _num +10;
    }
}