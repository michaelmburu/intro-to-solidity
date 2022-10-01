//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 <0.9.0;

contract LoopContract {
    uint256[] public numbersList = [1, 2, 3, 4, 5, 6, 7, 8, 9];

    function checkMultiples(uint256 _number) public view returns (uint256) {
        uint256 count = 0;
        for (uint256 i = 1; i < numbersList.length; i++) {
            if (checkMultipleValidity(numbersList[i], _number)) {
                count++;
            }
        }
        return count;
    }

    function checkMultipleValidity(uint256 _num, uint256 _nums)
        public
        pure
        returns (bool)
    {
        if (_num % _nums == 0) {
            return true;
        } else {
            return false;
        }
    }
}
