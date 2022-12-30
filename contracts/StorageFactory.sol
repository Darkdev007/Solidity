//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
import "./SimpleStorageFcc.sol";

contract StorageFactory {
    SimpleStorage[] public simpleStorageArray; 
    function createSimpleStorageContract() public{
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function sfStore(uint _simpleStorageIndex, uint _simpleStorageNumber) public {
        //Address
        //ABI - Application Binary Interface
        SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
        simpleStorage.store(_simpleStorageNumber);

    }

    function sfGet(uint _simpleStorageIndex) public view returns(uint){
        SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
        return simpleStorage.retrieve();
    }
}