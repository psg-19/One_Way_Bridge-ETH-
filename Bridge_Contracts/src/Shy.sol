// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import "../node_modules/@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "../node_modules/@openzeppelin/contracts/access/Ownable.sol";


contract Shy  is ERC20,Ownable {


constructor () ERC20("ShyCoin","Shy") Ownable(msg.sender){

}

function mint(address to,uint amount) public onlyOwner(){

_mint(to,amount);


}


 }
