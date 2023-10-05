// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 < 0.9.0;

contract Ex5_array {
    uint[] public array1;
    string[5] public array2 = ["apple", "banana", "cocout"];

    function getLength1() public view returns(uint) {
        return array1.length;
    }

    function getLength2() public view returns(uint) {
        return array2.length;
    }

    function getArray1(uint _index) public view returns(uint) {
        return array1[_index];
    }

    function getArray2(uint _index) public view returns(string memory) {
        return array2[_index];
    }

}

