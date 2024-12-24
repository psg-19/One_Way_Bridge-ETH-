// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import "forge-std/Test.sol";

import "src/Shy.sol";

contract TestContract is Test {
    Shy c;

    function setUp() public {
        c = new Shy();
    }

    function testBar() public {

        // vm.prank(0xc2E500d3fb7AC710B682fc3Ebc74a5bd5752f210);
        c.mint(address(this), 10);
        // c.mint(to, amount);
        assertEq(c.balanceOf(address(this)), 10, "ok");
    }
 
}
