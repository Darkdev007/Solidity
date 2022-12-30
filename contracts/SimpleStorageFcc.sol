//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract SimpleStorage{
   uint public favoriteNumber;
    //Mapping
    mapping (string => uint ) public nameToFavoriteNumber;

    //An array of a person adn their favorite number
    struct People{
        uint favoriteNumber;
        string name;
    }

    People public person = People(6, "Tobi");

    People[] public people;
    function store(uint _favoriteNumber) public virtual{
        favoriteNumber = _favoriteNumber;
    }
    function retrieve() public view returns(uint){
        return favoriteNumber;
    }

    function addToPeople(uint _favoriteNumber, string memory _name) public{
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

   

}