// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract DemoContract {
    uint256 public uintValue = 100;
    int256 public intValue = -100;
    string public stringValue = "hello";

    uint128[] private array = [1, 2, 4, 8, 16, 32];

    event log(address indexed user, string message);

    function getSumOfArray() public returns (uint128) {
        emit log(msg.sender, "getSumOfArray: start loop");

        uint128 sum = 0;
        for (uint i = 0; i < 6; i++) {
            sum += array[i];
        }

        emit log(msg.sender, "getSumOfArray: finish loop");
        return sum;
    }
}
