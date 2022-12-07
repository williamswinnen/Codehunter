pragma solidity ^0.6.0;

import "https://github.com/maticnetwork/contracts/blob/stable/contracts/Matic.sol";

contract MaticTokenTransfer {
  // Address of the Matic token contract on the Mumbai Polygon testnet
  address public maticTokenAddress = 0x0000000000000000000000000000000000000000;

  // Address of the wallet that will send the tokens
  address public sender;

  // Address of the wallet that will receive the tokens
  address public receiver;

  // Amount of tokens to be transferred
  uint256 public amount;

  // Constructor to initialize the contract with the sender, receiver, and amount of tokens
  constructor(address _sender, address _receiver, uint256 _amount) public {
    sender = _sender;
    receiver = _receiver;
    amount = _amount;
  }

  // Function to send the tokens from the sender to the receiver
  function sendTokens() public {
    // Get the Matic token contract instance
    MaticToken maticToken = MaticToken(maticTokenAddress);

    // Transfer the tokens from the sender to the receiver
    maticToken.transferFrom(sender, receiver, amount);
  }
}
