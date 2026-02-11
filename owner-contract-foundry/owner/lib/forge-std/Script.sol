// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

interface Vm {
	function startBroadcast() external;
	function startBroadcast(address) external;
	function stopBroadcast() external;
	function envUint(string calldata) external view returns (uint256);
	function envString(string calldata) external view returns (string memory);
	function envAddress(string calldata) external view returns (address);
	function envBytes(string calldata) external view returns (bytes memory);
	function envBool(string calldata) external view returns (bool);
}

abstract contract Script {
	Vm public constant vm = Vm(address(uint160(uint256(keccak256("hevm cheat code")))));
}
