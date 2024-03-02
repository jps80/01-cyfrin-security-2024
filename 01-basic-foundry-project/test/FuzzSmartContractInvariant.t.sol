// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {StdInvariant} from "forge-std/StdInvariant.sol";
import {FuzzSmartContract} from "../src/FuzzSmartContract.sol";

contract FuzzSmartContractTest is StdInvariant, Test {
    FuzzSmartContract public fuzzSmartContract;

    function setUp() public {
        fuzzSmartContract = new FuzzSmartContract();
        targetContract(address(fuzzSmartContract));
    }

    function invariant_testAlwaysReturnsZero() public {
        assertEq(fuzzSmartContract.shouldBeAlwaysZero(), 0);
    }

    // function test_alwaysShouldBeZero() public {
    //     uint256 data = 0;
    //     fuzzSmartContract.doStuff(data);
    //     assertEq(fuzzSmartContract.shouldBeAlwaysZero(), 0);
    // }

    // // this test will be used by Foundry in Invariant mode
    // function test_alwaysShouldBeZeroFuzz(uint256 data) public {
    //     //uint256 data = 0;
    //     fuzzSmartContract.doStuff(data);
    //     assertEq(fuzzSmartContract.shouldBeAlwaysZero(), 0);
    // }
}
