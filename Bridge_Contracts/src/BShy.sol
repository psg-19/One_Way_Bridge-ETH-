// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import "../node_modules/@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "../node_modules/@openzeppelin/contracts/access/Ownable.sol";


contract BShy  is ERC20,Ownable {


constructor () ERC20("Bridged_ShyCoin","BShy") Ownable(msg.sender){

}

function mint(address to,uint amount) public onlyOwner(){

_mint(to,amount);


}

function burn(address to,uint amount) public onlyOwner(){
_burn(to, amount);
}

 }
