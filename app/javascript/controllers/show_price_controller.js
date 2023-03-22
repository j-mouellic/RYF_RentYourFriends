import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="show-price"
export default class extends Controller {
  static targets = ["dateDebut", "dateFin"]
  static values = {
    prixtotal: Number
  }

  connect() {
}

calculate(event) {
  event.preventDefault()
  const dateDebut = new Date(this.dateDebutTarget.value);
  const dateFin = new Date(this.dateFinTarget.value);
  const totalJours = Math.round((dateFin - dateDebut) / (1000 * 60 * 60 * 24));
  const totalPrix = totalJours*this.prixtotalValue
  console.log(this.prixtotalValue)

  const resultElement = document.getElementById("resultjours");
  resultElement.innerText = totalJours;

  const resultPrice = document.getElementById("resultprix");
  resultPrice.innerText = totalPrix;
}}
