// SPDX-License-Identifier: MIT
pragma solidity 0.8.21; // states the version of solidity

contract SimpleStorage
{
    uint256 public myfavoriteNumber; // creates a uint256 var

    struct person
    {
        uint256 favoriteNumber;
        string name;
    }

    // person public david = person({favoriteNumber: 5, name: "David"});

    person[] public listOfPeople;

    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public virtual
    {
        myfavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256)
    {
        return myfavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public 
    {
        listOfPeople.push( person(_favoriteNumber, _name) );
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
