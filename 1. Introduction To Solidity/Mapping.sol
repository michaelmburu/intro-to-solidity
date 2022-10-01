//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 <0.9.0;

contract Mapping {
    mapping(address => uint256) public myMap;

    function setAddress(address addr, uint256 i) public {
        myMap[addr] = i;
    }

    function getAddress(address addr) public view returns(uint) {
        return myMap[addr];
    }

    function removeAddress(address addr) public {
        delete myMap[addr];
    }
}

contract MovieMapping {
    struct Movie {
        string title;
        string director;
    }

    mapping(uint => Movie) movie;

    //Nested Mapping
    mapping(address => mapping(uint => Movie)) public myMovie;

    function addMovie(uint id, string memory title, string memory director) public {
        movie[id] = Movie(title, director);
    }

    //Add myMovie nested map
    function addMyMovie(uint id, string memory title, string memory director) public {
        myMovie[msg.sender][id] = Movie(title, director);
    }
}

