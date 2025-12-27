import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["popup"]

  connect() {
    this.hidePopup()
  }

  hidePopup() {
    setTimeout(() => {
      this.popupTarget.classList.add("hidden")
    }, 4000)
  }
}
