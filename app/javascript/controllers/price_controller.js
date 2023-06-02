import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="price"
export default class extends Controller {
  static targets = ["originalprice"]
  static values = {
    link: String
  }

  connect() {
    console.log("conectado")
    console.log(this.valorValue)

    //this.originalpriceTarget.hover  ({
    //this.originalpriceTarget.innerHTML='Click e compre →'
    //}, {this.originalpriceTarget.innerHTML=originalPriceText})
  }

  redirect_to(event) {
    const productPath = event.currentTarget.dataset.priceLinkValue
    window.location.href = productPath
  }
  change_price(event) {
    const originalPriceText = this.originalpriceTarget.innerHTML

    event.currentTarget.innerHTML='Click e compre →'
  }
  back_price(event) {
    const originalPriceText = this.originalpriceTarget.innerHTML
    console.log(event.target.dataset.valor)
    event.currentTarget.innerHTML=event.target.dataset.valor
  }

}
