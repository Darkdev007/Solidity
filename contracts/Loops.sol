//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Example{
    uint[] public numbers = [1,2,3,4,5,6];
    uint public count = numbers[0];

    function getSumOfNumbers() public payable returns(uint){
        for(uint i = 0; i < numbers.length; i++){
            count += numbers[i];
        }
        return count;
    }

}