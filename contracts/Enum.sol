//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Example{
    enum Button{
        Off,
        On
    }
    Button public button;
function onButton() public{
    button = Button.On;
}

function offButton() public{
    button = Button.Off;
}


}