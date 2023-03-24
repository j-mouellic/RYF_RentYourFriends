import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="show-price"
export default class extends Controller {
  static targets = ["dateDebut", "dateFin", "popup"]
  static values = {
    prixtotal: Number
  }

  connect() {
  const defaults = document.getElementsByClassName('default');
  const pourcentage = defaults.length * 5
  console.log(pourcentage)
  const remise = document.getElementById('remise');
  remise.innerText = `${pourcentage}%`;

  const numb = document.getElementById('default-numb');
  numb.innerText = `x${defaults.length}`;
}

  calculate(event) {
    event.preventDefault()
    const defaults = document.getElementsByClassName('default');
    const pourcentage = defaults.length * 5
    const dateDebut = new Date(this.dateDebutTarget.value);
    const dateFin = new Date(this.dateFinTarget.value);
    const totalJours = Math.round((dateFin - dateDebut) / (1000 * 60 * 60 * 24));
    const totalPrix = (totalJours + 1)*this.prixtotalValue
    const PrixRemise = (totalPrix - 20)-(totalPrix * (pourcentage/100));
    const resultElement = document.getElementById("resultjours");
    resultElement.innerText = totalJours + 1;
    const resultPrice = document.getElementById("resultprix");
    resultPrice.innerText = `${PrixRemise.toLocaleString('fr-FR', { minimumFractionDigits: 2 })} €`;  }

tada(event) {
  Swal.fire({
    imageUrl: 'https://placeholder.pics/svg/300x1500',
    imageHeight: 1500,
    imageAlt: 'A tall image'
  })
}
}
