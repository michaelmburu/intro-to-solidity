//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 <0.9.0;

//OPERATORS
//Arithmetic Operators: + - % /
// Operands:  a + b
//Operators = signs

contract Operators {
    function calculator() public pure returns (uint256) {
        uint result;
        result = 5%8;
        return result;
    }
}
