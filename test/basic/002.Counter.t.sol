// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.20;

import "forge-std/Test.sol";

import "src/basic/Counter.sol";

contract CounterTest is Test {
    Counter counter;

    function setUp() public {
        counter = new Counter();
    }

    function test_get() public {
        assertEq(counter.get(), 0);
    }

    function test_inc() public {
        counter.inc();
        assertEq(counter.get(), 1);
    }

    function test_dec_success() public {
        counter.inc();
        assertEq(counter.get(), 1);
        counter.dec();
        assertEq(counter.get(), 0);
    }

    function test_dec_failed_panic_arithmetic() public {
        vm.expectRevert(stdError.arithmeticError);
        counter.dec();
    }
}
