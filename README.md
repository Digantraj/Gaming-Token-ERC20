# DegenToken

DegenToken is an ERC20 token smart contract built with Solidity, utilizing the OpenZeppelin library for secure token standards. This smart contract allows for token minting, burning, and transferring. Additionally, it includes a store feature where users can redeem items with their tokens.

## Table of Contents

- [Features](#features)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Contract Details](#contract-details)
- [License](#license)

## Features

- **Minting**: The contract owner can mint new tokens to any address.
- **Burning**: Any user can burn their own tokens to reduce the total supply.
- **Transferring**: Users can transfer tokens to other addresses.
- **Item Redemption**: Users can redeem items from a store using tokens.

## Getting Started

These instructions will help you set up and deploy the `DegenToken` smart contract using Remix IDE or any Ethereum development environment.

### Prerequisites

- [Remix IDE](https://remix.ethereum.org/) or a local Ethereum development environment like Hardhat or Truffle.
- A MetaMask wallet or any Web3-enabled wallet to interact with the smart contract.
- Test Ether (if deploying on a test network).

### Installation

1. Open [Remix IDE](https://remix.ethereum.org/).
2. Create a new file named `DegenToken.sol`.
3. Copy and paste the smart contract code into the file.
4. Compile the contract by selecting the appropriate Solidity version (`0.8.0` or higher).
5. Deploy the contract using a JavaScript VM or connect to a test network with MetaMask.

## Contract Details

### DegenToken.sol

- **mint(address to, uint256 amount)**: Allows the contract owner to mint new tokens to a specified address.
- **burn(uint256 amount)**: Allows any user to burn a specified amount of their tokens.
- **transfer(address to, uint256 amount)**: Standard ERC20 function for transferring tokens.
- **addItem(uint256 price, uint256 initialQuantity)**: Adds a new item to the store with a specified price and quantity.
- **redeem(uint256 itemId, uint256 quantity)**: Allows users to redeem items from the store using their tokens.

### Store Functionality

The contract includes a store feature where items can be added by the owner and redeemed by users. Each item has a price (in tokens) and a quantity. Users can redeem items by paying the equivalent token amount, which will be transferred to the contract owner.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
