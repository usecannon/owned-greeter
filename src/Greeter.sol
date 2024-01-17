// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract Greeter is Ownable {
    mapping(uint256 => string) public greetings;

    constructor(address _initialOwner) Ownable(_initialOwner) {}

    function setGreeting(uint256 _index, string memory _greeting) public onlyOwner {
        greetings[_index] = _greeting;
    }

    function greet(uint256 _index) public view returns (string memory) {
        return greetings[_index];
    }
}
