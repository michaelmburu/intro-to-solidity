//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 <0.9.0;

contract Enums {
    enum shirtColor {RED, WHITE, BLUE}
    shirtColor choice;
    shirtColor constant defaultChoice = shirtColor.BLUE;
}
