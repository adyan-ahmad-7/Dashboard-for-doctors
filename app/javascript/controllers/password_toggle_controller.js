import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="password-toggle"
export default class extends Controller {
  static targets = ["loginPassword"]

  loginPasswordShowHide() {
    const inputValue = this.loginPasswordTarget
    if(inputValue.type==="password"){
      inputValue.type = "text"
    }
    else{
      inputValue.type = "password"
    }
  }
}
