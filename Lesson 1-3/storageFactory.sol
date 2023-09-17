// SPDX-License-Identifier: MIT

pragma solidity 0.8.21; // states the version of solidity

import {SimpleStorage} from "./simpleStorage.sol";

contract StorageFactory{

    SimpleStorage[] public listOfSimpleStorageContract;

    function CreateSimpleStorageContract() public {

        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listOfSimpleStorageContract.push(newSimpleStorageContract);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        listOfSimpleStorageContract[_simpleStorageIndex].store(_newSimpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
        return listOfSimpleStorageContract[_simpleStorageIndex].retrieve();
    }
}
