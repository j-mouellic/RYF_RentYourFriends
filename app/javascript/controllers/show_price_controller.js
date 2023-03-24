import { Controller } from "@hotwired/stimulus"
//= require sweetalert2
// Connects to data-controller="show-price"
export default class extends Controller {
  static targets = ["dateDebut", "dateFin", "popup"]
  static values = {
    prixtotal: Number,
    friendid: Number
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
    console.log(defaults)
    const pourcentage = defaults.length * 5
    const dateDebut = new Date(this.dateDebutTarget.value);
    console.log(dateDebut)
    const dateFin = new Date(this.dateFinTarget.value);
    console.log(dateFin)
    const totalJours = Math.round((dateFin - dateDebut) / (1000 * 60 * 60 * 24));
    console.log(totalJours)
    const totalPrix = (totalJours + 1)*this.prixtotalValue
    const PrixRemise = (totalPrix + 20)-(totalPrix * (pourcentage/100));
    const resultElement = document.getElementById("resultjours");
    resultElement.innerText = totalJours + 1;
    const resultPrice = document.getElementById("resultprix");
    resultPrice.innerText = `${PrixRemise.toLocaleString('fr-FR', { minimumFractionDigits: 2 })} €`;  }

    reserve(event) {
      event.preventDefault()
      Swal.fire({
        imageUrl: 'https://images.pexels.com/photos/2923156/pexels-photo-2923156.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
        timer: 1500,
        imageHeight: 500,
        imageWidth: 350,
        imageAlt: 'A tall image',
        confirmButtonText: 'Votre demande de réservation a bien été transmise !'
      })
      console.log(`${this.friendidValue}/bookings`)
      const url = `${this.friendidValue}/bookings?`+ new URLSearchParams({
        start_date: this.dateDebutTarget.value,
        end_date: this.dateFinTarget.value
    })
      this.request = new Request(url, {
        method: 'POST',
        credentials: "include",
        headers: {
          "X-CSRF-Token": document.querySelector(
            'meta[name="csrf-token"]'
          ).content
        }
    })
    fetch(this.request)
  }
}
