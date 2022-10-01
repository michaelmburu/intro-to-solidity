//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 <0.9.0;

contract Member {
    string _name;
    uint256 _age;

    // initialize name and age upon deployment
    constructor(string memory name, uint256 age) {
        _name = name;
        _age = age;
    }
}

//Option to call constructor
contract Teacher is Member("Tom", 33) {
    function getName() public view returns (string memory) {
        return _name;
    }

    function getAge() public view returns (uint256 age) {
        return _age;
    }
}

//Option 2 to call constructor
contract Student is Member {
    constructor(string memory n, uint256 a) Member(n, a) {}

    function getName() public view returns (string memory) {
        return _name;
    }
}

contract Base {
    uint256 _age;

    constructor(uint age){
        _age = age;
    }
}

contract Derive is Base {
    constructor(uint age) Base(age){}

    function getAge() public view returns (uint){
        return _age;
    }
}
