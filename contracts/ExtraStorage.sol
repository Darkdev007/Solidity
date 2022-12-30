//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
import "./SimpleStorageFcc.sol";

contract ExtraStorage is SimpleStorage {
    // + 5 
    //override
    // virtual override
    function store(uint _favoriteNumber) public override{
        favoriteNumber = _favoriteNumber;
    }
}