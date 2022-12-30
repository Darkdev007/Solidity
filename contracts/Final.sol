//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Ownable{
    address owner;

    modifier onlyOwner(){
        require(msg.sender == owner, "must be the owner");
        _;
    }
    constructor() public{
        owner = msg.sender;
    }
}
//Factory is a smart contract that creates a smart contract
contract SecretVault {
    string secret;

    constructor(string memory _secret) public{
        secret = _secret;
    }

    
    function getSecret() public view returns(string memory){
        return secret;
    }
}

contract MyContract is Ownable{ 
    address secretVault;
    constructor(string memory _secret) public{
        SecretVault _secretVault = new SecretVault(_secret);
        secretVault = address(_secretVault);
        super;

    }
}