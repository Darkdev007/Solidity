//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract MyContract{
    //Arrays 
    uint[] public uintArray = [1,2,3];
    string[] public stringArray = ["banana", "apple", "carrot"];
    string[] public values;
    //2-D Arrays array in another array
    uint256[][] public array2D = [[1, 2, 3], [4, 5, 6]];
    function addValue(string memory _value) public{
        values.push(_value);
    }

    function valueCount() public view returns(uint){
        return values.length;
    }
    

}
