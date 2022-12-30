//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract CarRental{
    address payable public owner;
    // if car is rented or not using enum
    enum carRentalStatus{Rented, Free}
    carRentalStatus public status;
  
    constructor(){
        owner = payable(msg.sender);
        status = carRentalStatus.Free;
    }

    // assuming cars cost nothing less than 3 ether
    modifier price(){
        require(msg.value >=  3 ether, "You do not have enough amount for purchase");
        _;
    }
    modifier isfree(){
        require(status == carRentalStatus.Free, "This car is currently rented");
        _;
    }


    function payForCar() public payable isfree() price(){
        status = carRentalStatus.Rented;
        (bool sent, bytes memory data ) = owner.call{value: msg.value}("");
        require(true);

        
    }

}