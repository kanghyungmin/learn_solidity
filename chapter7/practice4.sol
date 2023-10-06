// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 < 0.9.0;

contract ex4 {
    function output5() public pure returns(uint) {
        return 5;
    }

    function output5WithTryCatch() public view returns(uint) {
        try this.output5() returns (uint value) {
            revert("Always failure");
            return value;
        } catch {
            return 0;
        }
        
    }
}