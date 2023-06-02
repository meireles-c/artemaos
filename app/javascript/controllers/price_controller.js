import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="price"
export default class extends Controller {
  static values = {
    link: String
  }

  connect() {
  this.originalPriceTarget.hover  ({
    const originalPriceText = this.originalPriceTarget.innerHTML
    this.originalPriceTarget.innerHTML='Click e compre →'
    }, {this.originalPriceTarget.innerHTML=originalPriceText})
  }

  redirect_to(event) {
    const productPath = event.currentTarget.dataset.priceLinkValue
    window.location.href = productPath
  }
}
