// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 < 0.9.0;

contract quiz3 {
    enum Switch {
        turnOff,
        trunOn
    }
    Switch public lightStatus = Switch.trunOn;

    function turnOnTheLight() public {
        require(lightStatus==Switch.turnOff, "The light");
        lightStatus = Switch.trunOn;
    }
    function turnOffTheLight() public {
        require(lightStatus==Switch.trunOn, "The light");
        lightStatus = Switch.turnOff;
    }
}