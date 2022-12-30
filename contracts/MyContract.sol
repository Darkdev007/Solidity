//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract MyContract{
    //State Variables
    int256 myInt = -1;
    uint public myUint = 1;
    uint256 public myUint256 = 1;
    uint8 public myUint8 = 1;

    string public myString = "Hello, World!";
    bytes32 public myBytes32 = "Hello, world!" ;//stores string like an array
    address public myAddress = 0xFC7622e37867317064aaF340568eaC6027607c8f;

    struct MyStruct{
        uint256 myUint256;
        string myString;
    }
    MyStruct public myStruct = MyStruct(1, "Hello");
    //Local Variables
    function getValue() public pure returns(uint){
        uint value = 1;
        return value;
    }
}