# Medical Bill Transaction with Ethereum

## Overview

This project implements a simplified Ethereum smart contract for managing medical bill transactions. The smart contract allows patients to pay their medical bills securely on the Ethereum blockchain.

## Smart Contract Details

- **Contract Name:** MedicalBillTransaction
- **Functionality:**
  - Patients can pay their medical bills by calling the `payBill` function.
  - Contract owner (deployer) can update details like bill amount, patient address, and healthcare provider address.
  - Various modifiers ensure secure and controlled access to functions.

## Getting Started

### Prerequisites

- [Node.js](https://nodejs.org/) installed
- [Truffle](https://www.trufflesuite.com/truffle) installed globally (`npm install -g truffle`)
- Ethereum development environment (e.g., [Ganache](https://www.trufflesuite.com/ganache)) for testing and deployment

### Installation

1. Clone the repository:

   bash
   git clone https://github.com/your-username/MedicalBillTransactionProject.git
   cd MedicalBillTransactionProject

2. Install dependencies:

   bash
   npm install

### Usage

1. Compile the smart contract:

   bash
   truffle compile

2. Migrate the contract to your development blockchain (e.g., Ganache):

   bash
   truffle migrate --network development

3. Run tests:

   bash
   truffle test

4. Interact with the deployed contract using a JavaScript console or frontend application.

## Contract Deployment

- Deploy the contract to the Ethereum mainnet or testnets as needed.
- Adjust network configurations in `truffle-config.js` for deployment.

## Contributors

- [Vedant Shah](https://github.com/iamvrs)

## License

This project is licensed under the [MIT License](LICENSE).