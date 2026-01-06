import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["popup"]

  connect() {
    if (this.hasPopupTarget) {
      this.hidePopup()
    }
  }

  hidePopup() {
    setTimeout(() => {
      if (this.hasPopupTarget) {
        this.popupTarget.classList.add("hidden")
      }
    }, 4000)
  }
}
