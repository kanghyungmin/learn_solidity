// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 < 0.9.0;

library Math {
    function add(uint8 a, uint8 b) internal pure returns (uint8) {
        require( a+b >=a, "Error: addition overflow");
        return a + b;
    }
}

contract enum_ex {
    using Math for uint8;

    function overflow(uint8 _num1, uint8 _num2) public pure returns(uint8) {
        return _num1 + _num2;
    }
    function Nooverflow1(uint8 _num1, uint8 _num2) public pure returns(uint8) {
        return Math.add(_num1, _num2);
    }
    function Nooverflow2(uint8 _num1, uint8 _num2) public pure returns(uint8) {
        return _num1.add(_num2);
    }

}
