//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Test{
   bool public work = true;
   address public contactAddress = 0x540d7E428D5207B30EE03F2551Cbb5751D3c7569 ;
   string public  myString = "Hello World!";
   uint public myUint = 60;

   struct MyStruct{
       uint myUint;
       string myString;
   }

   MyStruct public myStruct = MyStruct(256, "Hello world");
    
    function changeString(string memory _i) public{
        myString = _i;
    }

    function viewString() public view returns(string memory){
        return myString;
    }

    //Arrays
    uint[] public numbers = [1,2,3];
    uint[][] public num = [[1,2,3],[4,5,6]];
    string[] public fruits = ["banana", "apple"];

    function addToNumbers(uint i) public{
        numbers.push(i);
    }
    function length() public view returns(uint){
        return numbers.length;
    }
    function addToFruits(string memory _i) public{
        fruits.push(_i);
    }

    function add() public pure returns(uint){
        uint num1 = 10;
        uint num2 = 20;
        uint sum = num1 + num2;
        return sum;
    }

    

}