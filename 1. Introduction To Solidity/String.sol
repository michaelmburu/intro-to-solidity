//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 <0.9.0;

contract LearnStrings {
    string greetings = "Habari";

    function sayHello() public view returns (string memory) {
        return greetings;
    }

    function changeGreeting(string memory _newGreetings) public {
        greetings = _newGreetings;
    }

    function getChar() public view returns (uint256) {
        bytes memory stringToBytes = bytes(greetings);
        return stringToBytes.length;
    }
}
