// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Hello {
    string public message = "Hello, World!";

    function getSome() public view returns (string memory) {
        return string.concat(message, " 123");
    }
}
