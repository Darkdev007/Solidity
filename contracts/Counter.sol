//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Counter{
    uint public counter = 0;

    function increment() public payable{
        counter ++;
    }
}