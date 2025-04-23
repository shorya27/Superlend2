// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../src/MockLendingVault.sol";

contract MockLendingVaultTest is Test {
    MockLendingVault vault;
    address public user = address(1);

    function setUp() public {
        vault = new MockLendingVault();
    }

    function testDeposit() public {
        vm.startPrank(user);
        vault.deposit(100);
        uint256 userDeposit = vault.getUserDeposit(user);
        assertEq(userDeposit, 100, "Deposit failed");
        vm.stopPrank();
    }

    function testWithdraw() public {
        vm.startPrank(user);
        vault.deposit(100);
        vault.withdraw(50);
        uint256 userDeposit = vault.getUserDeposit(user);
        assertEq(userDeposit, 50, "Withdraw failed");
        vm.stopPrank();
    }

    function testWithdrawInsufficientBalance() public {
        vm.startPrank(user);
        vault.deposit(100);
        vm.expectRevert("Insufficient balance to withdraw");
        vault.withdraw(200);
        vm.stopPrank();
    }
}
