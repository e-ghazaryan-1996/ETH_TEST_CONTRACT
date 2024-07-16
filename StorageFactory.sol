// SPDX-License-Identifier: MIT
pragma solidity >=0.8.19 <0.9.0;

import {TestStorage} from "./TestStorage.sol";

contract StorageFactory {
  TestStorage[] public listOfStorage;
  function createNewContract() public {
    TestStorage newTestStorage = new TestStorage();
    listOfStorage.push(newTestStorage);
  }
  function storePersonInList(uint256 _index,string memory _name, uint256 _id) public {
    listOfStorage[_index].addPerson(_name,_id);
  }
  function retrieveFromList(string memory _name, uint256 _index) public view  returns(uint256){
    return listOfStorage[_index].nameToId(_name);
  }
}