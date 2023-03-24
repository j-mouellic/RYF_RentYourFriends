import { Controller } from "@hotwired/stimulus"
//= require sweetalert2

// Connects to data-controller="try"
export default class extends Controller {
  connect() {
  }

  tada(event) {
    Swal.fire({
      imageUrl: 'https://images.pexels.com/photos/761977/pexels-photo-761977.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      imageHeight: 450,
      imageWidth: 400,
      imageAlt: 'A tall image',
      timer: 2500,
      confirmButtonText: 'Bien joué !'
    })
  }
}
