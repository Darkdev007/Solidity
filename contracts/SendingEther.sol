//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract SendEth{
    function sendEth(address payable _reciever) public payable{
        //transfer - capped gas
        // _reciever.transfer(msg.value);
        //send -  returns bool and capped gas
        // bool sendSuccess = _reciever.send(msg.value);
        // require(sendSuccess, "Sendig failed");
        // call - returns bool, no capped gas and is low level
        (bool callSuccess,) = _reciever.call{value : msg.value}("");
        require(callSuccess, "Calling failed");

    }
}