import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"
import { French } from 'https://ga.jspm.io/npm:flatpickr@4.6.9/dist/l10n/fr.js'
// flatpickr.localize(French); // default locale is now French
// Connects to data-controller="datepicker"
export default class extends Controller {
  connect() {
  flatpickr(this.element, {
    "locale": French
  })
}
}
