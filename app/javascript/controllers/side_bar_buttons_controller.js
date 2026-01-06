import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="side-bar-buttons"
export default class extends Controller {
  static targets = ["content","button"]
  loadContent(event) {
  const url = event.currentTarget.dataset.url

  fetch(url)
    .then(response => response.text())
    .then(html => {
      this.contentTarget.innerHTML = html
      this.contentTarget.dataset.currentUrl = url
    })
  }
}

