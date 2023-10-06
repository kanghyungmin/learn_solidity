// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 < 0.9.0;

contract ex3 {
    uint[] arr;
    function arrPop() public {
        arr.pop();
    }

    function arrPopWithTryCatch() public returns(bool){
        try this.arrPop() {
            return true;
        }catch {
            return false;
        }
    }
    
}