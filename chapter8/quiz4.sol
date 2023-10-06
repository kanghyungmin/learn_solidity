// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 < 0.9.0;

library Math {
    function sub(uint a, uint b) internal pure returns (uint) {
        require(b <=a, "Error: subtraction underflow");
        return a-b;
    }
}

contract quiz4 {
    using Math for uint; 

    function subtraction(uint _num1, uint _num2) public pure returns(uint) {
        return _num1.sub(_num2);
    }
}