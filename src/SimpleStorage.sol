// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage {
    uint256 myFavoriteNumber;

    struct Person {
        uint256 favNumber;
        string name;
    }

    mapping(string => uint256) public nameToFavoriteNumber;

    Person[] public listOfPeople;

    function store(uint256 _favroiteNumber) public {
        myFavoriteNumber = _favroiteNumber;
    }

    function retrive() public view returns (uint256) {
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _fanNum) public {
        listOfPeople.push(Person(_fanNum, _name));
        nameToFavoriteNumber[_name] = _fanNum;
    }
}
