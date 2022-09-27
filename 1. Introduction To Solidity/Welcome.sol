//SPDX-License-Identifier: UNLICENSED
pragma solidity >= 0.7.0 < 0.9.0;

// Adding to integers
contract WelcomeToSolidity {
    function getResult() public pure returns (uint) {
        uint a = 3;
        uint b = 2;
        uint result  = a + b;
        return result;
    }
}
