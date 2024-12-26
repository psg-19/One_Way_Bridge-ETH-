// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import "../node_modules/@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "../node_modules/@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "../node_modules/@openzeppelin/contracts/access/Ownable.sol";
import "../src/Shy.sol";
import "../src/BShy.sol";


contract BridgeBase  is Ownable {

mapping(address => uint256)  public balance_Bshy;

  event Burn(address indexed burner, uint amount);

constructor ()   Ownable(msg.sender){

}

  


function WithDraw_BShy_Coin(BShy Bshy,uint256 amount_requested) public{
 
//BURN KARO EMIT KARO 
require(balance_Bshy[msg.sender]>=amount_requested);
 
Bshy.mint(msg.sender,amount_requested ); //mintttttttttt
balance_Bshy[msg.sender]-=amount_requested;


}

 

function Burn_BshyCoin_Get_ShyCoin(BShy Bshy,uint256 amount) public{

require(IERC20(Bshy).allowance(msg.sender, address(this))>=amount);
Bshy.burn(msg.sender, amount);


//emit someone burnttttttttttt
 emit Burn(msg.sender, amount);

}



function SomeOne_Deposited_ShyCoin_On_Eth_Chain(address ad,uint256 amt) public onlyOwner(){
 
 balance_Bshy[ad]+=amt;

}




 }
