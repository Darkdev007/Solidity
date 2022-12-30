//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract MyContract{
    //Mapping are just like dictionaries in python
    mapping(uint => string) public names;
    mapping(uint => Book) public books;

    struct Book{
        string title;
        string author;
    }
    constructor() {
        names[1] = "ADAM";
        names[2] = "BRUCE";
        names[3] = "CARL";
    }

    function addBook(uint _id, string memory _title, string memory _author) public{
        books[_id] = Book(_title, _author);
    }
    
}