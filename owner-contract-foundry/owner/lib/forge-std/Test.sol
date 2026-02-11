// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Test {
    function assertEq(uint256 a, uint256 b) public pure {
        require(a == b, "Assertion failed: uint256");
    }

    function assertEq(address a, address b) public pure {
        require(a == b, "Assertion failed: address");
    }
}
