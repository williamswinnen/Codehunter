import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="matic"
import { Controller } from "stimulus"
import Web3 from 'web3';

const web3 = new Web3(window.ethereum);

const CONTRACT_ADDRESS = '<CONTRACT_ADDRESS>';
const CONTRACT_ABI = "<CONTRACT_ABI>";

const contract = new web3.eth.Contract(CONTRACT_ABI, CONTRACT_ADDRESS);



// app/javascript/controllers/matic_controller.js
// ...

export default class extends Controller {
  static targets = [ "walletAddress", "amount" ]

  connect() {
    // Check if Metamask is installed
    if (typeof window.ethereum === 'undefined') {
      alert('Please install Metamask to continue');
      return;
    }

    // Register an event listener for the "accountsChanged" event,
    // which is triggered when the user signs in or out of Metamask
    window.ethereum.on('accountsChanged', this.accountChanged.bind(this));
  }

  accountChanged(accounts) {
    // Update the selectedAddress property to reflect the current
    // account selected in Metamask
    this.selectedAddress = accounts[0];
  }

  send(event) {
    // Prevent the default form submission behavior
    event.preventDefault()

    // Request the user's permission to access their wallet
    window.ethereum.enable().then(() => {
      // The user has granted permission, so we can call the `sendMatic` function
      // on the deployed contract
      contract.methods.sendMatic(
        this.walletAddressTarget.value,
        this.amountTarget.value
      ).send({
        from: this.selectedAddress
      });
    }).catch(error => {
      // The user has denied permission, or there was an error
      // Handle the error as appropriate
      console.error(error);
      alert(error.message);
    });
  }
}
