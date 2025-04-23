// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MockLendingVault {
    mapping(address => uint256) private deposits;
    // Tracks user deposit amounts through their addresses

    event Deposited(address indexed user, uint256 amount);
    event Withdrawn(address indexed user, uint256 amount);

    // Function to deposit tokens 
    function deposit(uint256 amount) external {
        require(amount > 0, "Deposit amount must be greater than 0");
        deposits[msg.sender] += amount;
        emit Deposited(msg.sender, amount);
    }

    // Function to withdraw tokens
    function withdraw(uint256 amount) external {
        require(deposits[msg.sender] >= amount, "Insufficient balance to withdraw");
        deposits[msg.sender] -= amount;
        emit Withdrawn(msg.sender, amount);
    }

    // View function to get the total deposit of a user
    function getUserDeposit(address user) external view returns (uint256) {
        return deposits[user];
    }
}
