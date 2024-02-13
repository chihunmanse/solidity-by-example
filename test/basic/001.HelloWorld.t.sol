// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.20;

import "forge-std/Test.sol";

import "src/basic/HelloWorld.sol";

contract HelloWorldTest is Test {
    HelloWorld helloWorld;

    function setUp() public {
        helloWorld = new HelloWorld();
    }

    function test_Greet() public {
        assertEq(helloWorld.greet(), "Hello World!");
    }
}
