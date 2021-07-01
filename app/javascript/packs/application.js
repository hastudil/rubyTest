// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

//= require jquery
//= require jquery-ui
//= require popper
//= require turbolinks
//= require bootstrap
//= require bootstrap-multiselect
//= require_tree.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

// import "bootstrap"
// import "../stylesheets/application"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

// console.log("Hola!!!");

// $( "#product_category_name" ).autocomplete({
//     source: $('#product_category_name').data('autocomplete-source')
// });


// var alertList = document.querySelectorAll('.alert')
// alertList.forEach(function (alert) {
//   new Bootstrap.Alert(alert)
//   //console.log(alert)
// })


//================================================
// Example starter JavaScript for disabling form submissions if there are invalid fields
// (function () {
//   'use strict'

//   // Fetch all the forms we want to apply custom Bootstrap validation styles to
//   var forms = document.querySelectorAll('.needs-validation')
//   console.log(forms)
//   // Loop over them and prevent submission
//   Array.prototype.slice.call(forms)
//     .forEach(function (form) {
//       form.addEventListener('submit', function (event) {
//         if (!form.checkValidity()) {
//           event.preventDefault()
//           event.stopPropagation()
//         }

//         form.classList.add('was-validated')
//       }, false)
//     })
// })()