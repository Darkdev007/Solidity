//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract HotelRoom{
    //Ether payments
    //Modifiers
    //Visibility
    //Events
    //Enums 

    //to book a hotel by paying the owner of the hotel
    enum Statuses{Vacant, Occupied}
    Statuses public currentStatus;
    address payable public owner;
    //payable is a modifier that makes the address recieve crypto
    constructor(){
        owner = payable(msg.sender); //person owner the smart contract
        currentStatus = Statuses.Vacant;
    }
    function book() public payable{
        //Check price
        require(msg.value >= 2 ether, "Not enough ether provided ")
        //Check status
        require(currentStatus == Statuses.Vacant, "Currently Occupied."); // function that requires value to be true for other lines to run
        currentStatus = Statuses.Occupied;
        owner.transfer(msg.value); // transfer ether to owner
       
    }

}