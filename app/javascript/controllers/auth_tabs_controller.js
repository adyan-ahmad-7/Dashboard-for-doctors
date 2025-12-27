import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="auth-tabs"
export default class extends Controller {
  static targets = ["loginForm", "signupForm", "loginTab", "signupTab"]

  connect() {
    this.showLoginForm()
  }

  showLoginForm() {
    // Show / hide forms
    this.loginFormTarget.classList.remove("hidden")
    this.loginFormTarget.classList.add("block")
    this.signupFormTarget.classList.remove("block")
    this.signupFormTarget.classList.add("hidden")

    // Toggle tab styles
    this.loginTabTarget.classList.add("bg-white", "shadow-md", "text-indigo-600")
    this.signupTabTarget.classList.remove("bg-white", "shadow-md", "text-indigo-600")
    this.signupTabTarget.classList.add("text-gray-600")
  }

  showSignupForm() {
    // Show / hide forms
    this.signupFormTarget.classList.remove("hidden")
    this.signupFormTarget.classList.add("block")
    this.loginFormTarget.classList.remove("block")
    this.loginFormTarget.classList.add("hidden")

    // Toggle tab styles
    this.signupTabTarget.classList.add("bg-white", "shadow-md", "text-indigo-600")
    this.loginTabTarget.classList.remove("bg-white", "shadow-md", "text-indigo-600")
    this.loginTabTarget.classList.add("text-gray-600")
  }
}
