// SPDX-License-Identifier: MIT
pragma solidity >=0.8.19 <0.9.0;

contract TestStorage {
    uint256 accountCount;

    struct Person {
        string name;
        uint256 id;
    }

    Person[] public listOfPeoples;

    mapping(string => uint256) public nameToId; 

    function addPerson (string memory _name, uint256 _id) public {
        listOfPeoples.push(Person(_name,_id));
        nameToId[_name] = _id ;
    } 

  
}