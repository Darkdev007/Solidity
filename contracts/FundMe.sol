//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
import "./PriceConverter.sol";

//Get funds from users
//Withdraw funds
// Set a minimum funding value in usd
contract FundMe {
    using PriceConverter for uint256;
    address  public immutable owner;
    uint public constant MINIMUM_USD= 50 * 1e18;
    address[] public funders;
    mapping (address => uint ) public addressToAmountFunded;
    
    constructor(){
        owner = msg.sender;
    }
    modifier onlyOwner(){
        require(msg.sender == owner, "You cannot withdraw");
        _; // do all the code
    }
    function fund() public payable{
        //how to send eth to this contract
        require(msg.value.getConversionRate()> MINIMUM_USD, "Didnt send enough"); //1e18 == 1 * 10 ^ 18 = 1 eth
        funders.push(msg.sender);
        addressToAmountFunded[msg.sender] = msg.value;

        //reverting?
        //undo any action before, and send the remaing gas back
    }
    

    function withdraw() public onlyOwner{
        for(uint funderIndex = 0; funderIndex < funders.length; funderIndex++ ){
            address funder = funders[funderIndex];
            addressToAmountFunded[funder] = 0;
        }
        //reset the array
        funders = new address[](0);
        //sending eth
        //transfer
        payable(msg.sender).transfer(address(this).balance);
        //send
        bool sendSuccess = payable(msg.sender).send(address(this).balance);
        require(sendSuccess, "Send failed");
        // call
        (bool callSuccess,)=  payable(msg.sender).call{value : address(this).balance}("");
        require(callSuccess, "Call failed");
    }

    // what happens if someone sends this contract eth without calling the fund function

    //receive()
    receive() external payable{
        fund();
    }
    //fallback()
    fallback() external payable{
        fund();
    }
}