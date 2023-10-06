// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 < 0.9.0;


contract Math {
    function division(uint _num1, uint _num2) public pure returns(uint) {
        return _num1 / _num2;
    }
}


contract ex7_6 {
    event Information(string _error);
    Math math = new Math();

    function divisionWithTryCatch(uint _num1, uint _num2) public returns(uint) {
        try math.division(_num1, _num2) returns (uint result) {
            return(result);
        }catch {
            emit Information("Failure");
            return(0);
        }
    }
}