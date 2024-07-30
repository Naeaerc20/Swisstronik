#!/bin/bash

# Prompt the user for the private key
echo "Please enter your private key:"
read PRIVATE_KEY

# Create or update the .env file with the provided private key
echo "PRIVATE_KEY=$PRIVATE_KEY" > .env

# Install dependencies
npm install

# Compile the smart contracts
npx hardhat compile

# Deploy the contract
npx hardhat run scripts/deploy.js --network swisstronik

echo "Deployment complete."
