// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ExampleContract {
    uint256 public counter = 0;

    struct ExampleStruct {
        uint8 first;
        bytes second;
        uint128 third;
        uint128 forth;
    }

    function exampleTupleArray(
        uint8 firstParameter,
        ExampleStruct[] memory secondParameter
    ) external returns (ExampleStruct memory result ) {
      require(firstParameter > 0, 'Put something');
      require(firstParameter < counter + firstParameter, 'Too much');
      counter = counter + firstParameter;
      return secondParameter[0];
    }
}
