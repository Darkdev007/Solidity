//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract NumberContract{
    uint favoriteNumber;

    function store(uint _number) public{
        favoriteNumber = _number;
    }

    function getNumber()public view returns(uint){
        return favoriteNumber;
    }

}

