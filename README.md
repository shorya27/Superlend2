# MockLendingVault

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

---

##  Structure

```
src/     → contract
test/    → tests
script/  → deploy script
```

---


