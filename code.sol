// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
//this will helps us to send ethers to specific account using 3 methods
contract sendethers_to_account
{
    address payable public getter=payable(0xdD870fA1b7C4700F2BD7f44238821C26f7392148);
    receive() external payable
    {

    }
    function send_method() public 
    {
       bool su= getter.send(1000000000000000000);
       require(su,"Invalid trac");
    }
    function transfer() public
    {
        getter.transfer(1000000000000000000);
    }
    function call() public
    {
       (bool suc,)= getter.call{value:1000000000000000000}("");
       require(suc,"You can't get go our");
    }
}
