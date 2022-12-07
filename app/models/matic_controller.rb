def send_tokens
  sender = params[:sender]
  receiver = params[:receiver]
  amount = params[:amount]

  contract_data = alchemy.solidity(file: "MaticTokenTransfer.sol")
  contract_address = alchemy.deploy_contract(contract_data, from: sender, args: [receiver, amount])
  alchemy.call_contract(contract_address, "sendTokens", from: sender)

  redirect_to root_path, notice: "Tokens sent successfully!"
end
