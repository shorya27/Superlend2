// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../src/MockLendingVault.sol";

contract DeployMockLendingVault is Script {
    function run() external {
        vm.startBroadcast();
        MockLendingVault vault = new MockLendingVault();
        console.log("MockLendingVault deployed to:", address(vault));
        vm.stopBroadcast();
    }
}
