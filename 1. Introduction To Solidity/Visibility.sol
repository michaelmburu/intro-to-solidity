//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 <0.9.0;

// Public vs Private vs External vs Internal

contract C {
    uint256 public data = 10; //state variable

    function x() public view returns (uint256) {
        return data;
    }

    function y() public view returns (uint256) {
        uint256 mydata = data + 5;
        return mydata;
    }
}
