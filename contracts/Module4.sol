//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "./Module3.sol";

contract Test{
    NumberContract public numberContract;
    NumberContract[] public numberContractArray;

    function startContract() public{
        numberContract = new NumberContract();
        numberContractArray.push(numberContract);
    }

    //to use a function from another contract you need
    //Address
    function testGetStore(uint _indexofarray, uint _favnumber) public{
        numberContractArray[_indexofarray].store(_favnumber);
    }
    //Application Binary Interface
    function textGetNumber(uint _indexofarray) public view {
        numberContractArray[_indexofarray].getNumber();
    }


}