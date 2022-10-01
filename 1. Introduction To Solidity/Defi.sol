//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 <0.9.0;

contract Defi {
    uint256 stakingWallet = 13;

    function airdrop() public returns (uint256) {
        if (stakingWallet == 10) {
            stakingWallet += 10;
        } else {
            stakingWallet += 1;
        }

        return stakingWallet;
    }
}
