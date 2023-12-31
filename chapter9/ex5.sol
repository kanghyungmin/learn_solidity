// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 < 0.9.0;


contract Receiver {
    event From(string info, address from);

    fallback() external {
        emit From("fallback()", msg.sender);
    }

    function outPut() public payable {
        emit From("outPut()", msg.sender);
    }

    function getBalance() public view returns(uint) {
        return address(this).balance;
    }   
}

contract Caller {
    function expectFallback(address _address) public {
        (bool success, ) = _address.call(abi.encodeWithSignature("outPut2()"));
        require(success, "Failed");
    }

    function outputWithEther(address _address) public payable {
        (bool success,) = _address.call{value:msg.value}(
            abi.encodeWithSignature("outPut()"));
        require(success, "Failed");
    }
}