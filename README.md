# Proof of Help – Smart Contract

This is the verified smart contract for the **Proof of Help** project, deployed on the **Base Sepolia Testnet**.

## 📜 Overview

`ProofOfHelp.sol` is a smart contract designed to track and reward users who contribute helpful actions onchain — whether through community support, technical help, or verifiable claims. The contract supports reputation claiming, tracks total contributions, and allows retrieval of all reputation holders.

## ✅ Contract Details

- **Contract Address:** `0xB70d7ACa4CB0310177Bfc41F73C6Cd794fb99d7F`
- **Network:** Base Sepolia
- **Compiler Version:** Solidity `^0.8.x`
- **License:** MIT
- **Status:** ✅ Verified on [BaseScan](https://sepolia.basescan.org/address/0xB70d7ACa4CB0310177Bfc41F73C6Cd794fb99d7F)

## 🧠 Features

- Users can **claim reputation points** based on contribution
- Keeps a record of all **claimers** and their **reputation scores**
- Publicly accessible data through:
  - `getReputation(address)`
  - `getAllClaimers()`
- Emission of `ReputationClaimed` event for every successful claim


