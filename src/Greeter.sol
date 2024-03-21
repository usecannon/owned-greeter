// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Greeter {
    mapping(address => string) public greetings;

    function setGreeting(string memory _greeting) public {
        greetings[msg.sender] = _greeting;
    }

    function greet() public view returns (string memory) {
        return greetings[msg.sender];
    }

    function greet(address _user) public view returns (string memory) {
        return greetings[_user];
    }
}
