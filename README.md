![image](https://github.com/user-attachments/assets/25e4e00d-1622-4bba-bd05-d93b5784cb1b)# MockLendingVault

A simple fully tested Solidity vault contract for mock lending. Users can deposit/withdraw token balances (`uint256`), with events and balance tracking.

---

##  Features

- Deposit & withdraw functions  
- Tracks per-user balances  
- Emits `Deposited` & `Withdrawn` events  
- `getUserDeposit(address)` view

---

##  Deploy (Local with Foundry)
To deploy the contracts use the following command:
```bash
anvil
forge script script/deploy.s.sol --rpc-url <RPC-URL> --private-key <PRIVATE-KEY> --broadcast
```

---

##  Test
To run the tests use the following command:
```bash
forge test
```
![image](https://github.com/user-attachments/assets/bd50bfd0-bbbf-4282-b884-5a721f018586)
![image](https://github.com/user-attachments/assets/c5c1281a-9077-4bb3-85a6-a2448fd53249)



---

##  Structure

```
src/     → contract
test/    → tests
script/  → deploy script
```

---



