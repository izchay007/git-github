pragma solidity ^0.8.0;
//SPDX-License-Identifier: MIT

contract SimpleStorage {
    
    uint256 public favouriteNumber;
    
    struct People {
        uint256 favouriteNumber;
        string name;
    }
    People[] public people;
    //People public person = People({favouriteNumber: 2, name: "Patrick"});

    mapping(string => uint256) public nameToFavouriteNumber;

    function store(uint256 _favouriteNumber)public {
        favouriteNumber = _favouriteNumber;
    }

    //view, pure
    function retrieve() public view returns (uint256){
        return favouriteNumber + favouriteNumber;
    }

    function addPerson(string memory _name, uint256 _favouriteNumber) public{
         people.push(People(_favouriteNumber, _name));
         nameToFavouriteNumber[_name] = _favouriteNumber;
        
    }
}