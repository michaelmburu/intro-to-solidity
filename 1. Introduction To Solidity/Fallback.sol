//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 <0.9.0;

// When you call contracts that don't exist
contract FallBack {
    event Log(uint gas);

    fallback() external payable {
        // don't write too much code
        emit Log(gasleft());
    }

    function getBalance() public view returns(uint) {
        return address(this).balance;
    }
}

//New contract that will trigger the Fallback Function
contract SendToFallBack {
    function transferToFallBack(address payable to) public payable {
        //Send ether with the trasnfer method
        to.transfer(msg.value);
    }

    function callFallback(address payable to) public payable {
        (bool sent,) = to.call{value:msg.value}('');
        require(sent, 'Failed to send');
    }
}