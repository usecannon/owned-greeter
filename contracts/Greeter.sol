// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract Greeter is Ownable {
    string public greeting = "Hello world!";

    function setGreeting(string memory _greeting) public onlyOwner {
        greeting = _greeting;
    }

    function greet() public view returns (string memory) {
        return greeting;
    }
}
