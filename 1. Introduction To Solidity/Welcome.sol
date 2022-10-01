//SPDX-License-Identifier: UNLICENSED
pragma solidity >= 0.5.0 < 0.9.0;

// Adding to integers
contract WelcomeToSolidity {
    function getResult() public pure returns (uint) {
        uint a = 10;
        uint b = 5;
        uint result  = a + b;
        return result;
    }
}
