# DegenToken Smart Contract

DegenToken is an ERC20 token built on the Ethereum blockchain, designed for use in a gaming or decentralized application (dApp) environment where users can mint, transfer, redeem, and burn tokens.

## Features

- **Minting Tokens**: Allows the contract owner to mint new tokens.
- **Burning Tokens**: Allows any user to burn their tokens.
- **Transferring Tokens**: Standard ERC20 token transfer functionality.
- **Redeeming Items**: Users can redeem tokens for items in the store.
- **Store Management**: The owner can add new items to the store with a price and quantity.

## Prerequisites

To interact with the DegenToken smart contract, you need the following:

- **MetaMask**: A crypto wallet browser extension to interact with the Ethereum blockchain.
- **Remix IDE**: An online IDE for Solidity smart contract development and deployment.
- **Injected Web3 Provider**: Use MetaMask as the injected Web3 provider to deploy and interact with the smart contract.

## Setup and Deployment

1. **Install MetaMask**: Install MetaMask from [metamask.io](https://metamask.io/) and set it up in your browser.

2. **Open Remix IDE**: Go to [Remix IDE](https://remix.ethereum.org/) in your browser.

3. **Load the Smart Contract**: Copy the `DegenToken` smart contract code into a new file in the Remix IDE.

4. **Compile the Contract**: In Remix, select the Solidity compiler version that matches `pragma solidity ^0.8.0` and compile the contract.

5. **Deploy the Contract**:
   - Select "Injected Web3" as the environment in the Remix IDE.
   - Make sure your MetaMask is connected to the desired Ethereum network.
   - Deploy the contract by clicking the "Deploy" button in Remix.

## Contract Functions

- **Mint**: Mints new tokens to a specified address (only callable by the owner).
- **Burn**: Burns a specified amount of the caller's tokens.
- **Transfer**: Transfers tokens from the caller's account to another address.
- **Redeem**: Redeems tokens for items in the in-game store.
- **Add Item**: Adds a new item to the store (only callable by the owner).


## Authors

- **Digant Raj**  
  GitHub: [@Digant](https://github.com/Digantraj)

## License

This project is licensed under the MIT License.
