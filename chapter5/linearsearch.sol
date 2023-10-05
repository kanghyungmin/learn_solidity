// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 < 0.9.0;

contract Ex5_LS {
    string[] public fruitArray = ["apple", "banana", "coconut", "durian", "etriog"];

    function linearSearch(string memory _word) public view returns(uint256, string memory) {
        for(uint idx =0; idx< fruitArray.length;++idx) {
            if(keccak256(bytes(fruitArray[idx]))== keccak256(bytes(_word))) {
                return (idx, fruitArray[idx]);
            }
        }
        return (0, "Nothing");
    }
}

