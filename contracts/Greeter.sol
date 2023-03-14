// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract Greeter is Ownable {
    mapping(uint => string) public greetings;

    function setGreeting(uint _index, string memory _greeting) public onlyOwner {
        greetings[_index] = _greeting;
    }

    function greet(uint _index) public view returns (string memory) {
        return greetings[_index];
    }
}
