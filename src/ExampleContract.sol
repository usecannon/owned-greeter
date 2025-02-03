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

    function exampleNestedArray(
        uint256[][] memory values
    ) external pure returns (uint256[][] memory result) {
        // Create a new array with same dimensions
        result = new uint256[][](values.length);

        // Iterate through outer array
        for (uint i = 0; i < values.length; i++) {
            result[i] = new uint256[](values[i].length);
            // Iterate through inner array
            for (uint j = 0; j < values[i].length; j++) {
                // Add 1 to each value
                result[i][j] = values[i][j] + 1;
            }
        }

        return result;
    }
}
