// SPDX-License-Identifier: MIT
pragma solidity 0.8.21; // states the version of solidity

import {SimpleStorage} from "./simpleStorage.sol";

contract AddFive is SimpleStorage {
    function store(uint256 _newNumber) override public {
        myfavoriteNumber = _newNumber + 5;
    }
}
