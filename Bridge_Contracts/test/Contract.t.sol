// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import "forge-std/Test.sol";

import "../src/Shy.sol";
import "../src/BShy.sol";
import "../src/BridgeBase.sol";
import "../src/BridgeEth.sol";

contract TestContract is Test {
     Shy ShyCoin;
     BShy BShyCoin;
BridgeBase Base_Contract;
BridgeEth Eth_Contract;

    function setUp() public {
         ShyCoin=new Shy();
         BShyCoin=new BShy();

         Eth_Contract=new BridgeEth();
         Base_Contract=new BridgeBase();
    }

function testCoins() public{

ShyCoin.mint(0xc2E500d3fb7AC710B682fc3Ebc74a5bd5752f210, 10);
BShyCoin.mint(0xc2E500d3fb7AC710B682fc3Ebc74a5bd5752f210, 10);
assertEq(ShyCoin.balanceOf(0xc2E500d3fb7AC710B682fc3Ebc74a5bd5752f210), 10);
assertEq(BShyCoin.balanceOf(0xc2E500d3fb7AC710B682fc3Ebc74a5bd5752f210), 10);


}


// function testBaseContract() public{

// Base_Contract.SomeOne_Deposited_ShyCoin_On_Eth_Chain(0xc2E500d3fb7AC710B682fc3Ebc74a5bd5752f210, 10);

// vm.prank(0xc2E500d3fb7AC710B682fc3Ebc74a5bd5752f210);
// Base_Contract.WithDraw_BShy_Coin(BShyCoin, 10);

// assertEq(Base_Contract.balance_Bshy(0xc2E500d3fb7AC710B682fc3Ebc74a5bd5752f210),10);

 

// }
     
 
}
