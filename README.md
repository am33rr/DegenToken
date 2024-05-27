# Degen Token

DegenToken is an ERC20 token deployed on the Avalanche Fuji Testnet. It features minting, burning, and redeeming functionalities. The token can be used to redeem various phones based on the token holder's balance.

## Deployed Contract
The contract is deployed on the Avalanche Fuji Testnet.

### Contract Details
* Token Name: Degen
* Token Symbol: DGN
* Decimals: 18
* Initial Supply: 0 (tokens must be minted by the owner)

### Phone Redemption
Holders can redeem their tokens for the following phones:

- Redmi
- One Plus
- iPhone
  
The redemption process decreases the available count of the respective phone and burns the holder's tokens. The required token amounts for redemption are:

* Redmi: 400 DGN
* One Plus: 800 DGN
* iPhone: 1200 DGN

## How to Use:

1. Clone this repository.
2. Install dependencies using `npm install`.
3. Create a .env file with your private key with funds and snowtrace api key
4. deploy the contract to avalanche by running `npx hardhat run scripts/deploy.js --network fuji `
5. verify the contract by running `npx hardhat verify _address_ --network fuji`


## Authors

Ameer S

Email - am33rrss@gmail.com

## License

This project is licensed under the [MIT] License.
