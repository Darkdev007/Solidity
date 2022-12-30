//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Example{
    //create a user with an address
    address payable public owner;

    constructor (){
        owner = payable(msg.sender);
    }

    modifier amountIsEnough(uint _amount){
        require(msg.value >= _amount, "You dont have enough ether");
        _;
    }
   
    function sendMoney()  public payable amountIsEnough(2 ether){
        owner.transfer = msg.value;
    }


}
