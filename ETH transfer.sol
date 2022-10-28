//SPDX-License-Identifier:MIT
pragma solidity ^0.8.7;
contract ETH
{
    modifier ownerOnly()
    {
        require(msg.sender==owner,"Your not owner");
        _;
    }
    address payable public immutable owner;
    constructor()
    {
        owner=payable(msg.sender);
    }
    receive() payable external
    {
    }
    function sendtoAddress(address payable getter,uint n) public ownerOnly
    {
        //  require(msg.sender==owner,"Your are not owner");
         uint nn=n*1e18;
         getter.call{value:nn}("");
    }

}

//////// THIS IS CONTRACT IS USED TO SEND ETHERS TO SMART CONTRACT, but only owner can transfer the funds which are in smart contracts to others
