// In migrations/2_deploy_contracts.js
const MaticTokenTransfer = artifacts.require("MaticTokenTransfer");

module.exports = function(deployer) {
  deployer.deploy(MaticTokenTransfer, "SENDER_WALLET_ADDRESS", "RECEIVER_WALLET_ADDRESS", AMOUNT_OF_TOKENS);
};
