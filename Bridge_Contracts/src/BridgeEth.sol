// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import "../node_modules/@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "../node_modules/@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "../node_modules/@openzeppelin/contracts/access/Ownable.sol";
import "../src/Shy.sol";
import "../src/BShy.sol";


contract BridgeEth  is Ownable {


mapping(address => uint256) balance_Shy;
event Deposit(address indexed depositor, uint amount);



constructor ()   Ownable(msg.sender){

}



function Desposit_ShyCoin_Eth_Chain(Shy shy,uint256 amount_deposit) public{
uint256 amount=IERC20(shy).allowance(msg.sender, address(this));

require(amount>=amount_deposit);

 

IERC20(shy).transferFrom(msg.sender, address(this), amount_deposit);

 emit Deposit(msg.sender,amount_deposit);

//emitttttttttf



}



function Withdraw_ShyCoin_Eth_Chain( Shy shy , uint256 amount_requested ) public{
uint256 amount=balance_Shy[msg.sender];

require(amount>=amount_requested);

IERC20(shy).transfer(msg.sender, amount_requested);

balance_Shy[msg.sender]-= amount_requested;

// require(IERC20(Bshy).balanceOf(msg.sender)>0);

shy.transfer(msg.sender, amount_requested);



}


function Someone_Burnt_BShy_On_Base_Chain(address ad,uint256 amt) public onlyOwner(){

balance_Shy[ad]+=amt;
 




}





 }
