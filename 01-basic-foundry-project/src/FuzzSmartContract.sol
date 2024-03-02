// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract FuzzSmartContract {
    uint256 public shouldBeAlwaysZero = 0;
    uint256 private  hidden = 0;

    /**
     * @dev Invariant should be that the property always has zero value
     */
    function doStuff(uint256 data) public {
       if(data == 2){
        shouldBeAlwaysZero = 1; // this broken our "invariant" function
       }
       if(hidden == 7){
        shouldBeAlwaysZero = 1; // this broken our "invariant" function
       }
       hidden = data;
    }

}
