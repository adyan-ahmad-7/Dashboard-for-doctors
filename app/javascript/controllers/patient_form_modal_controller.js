import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="patient-form-modal"
export default class extends Controller {
  static targets = ["modal"]
  connect() {
  }
  openForm(){
    this.modalTarget.classList.remove("hidden")
    console.log(this.modalTarget)
  }
  closeForm(){
    this.modalTarget.classList.add("hidden")
  }
}
