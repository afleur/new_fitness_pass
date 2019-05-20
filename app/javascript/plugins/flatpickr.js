
import flatpickr from "flatpickr"
import "flatpickr/dist/themes/airbnb.css" // A path to the theme CSS

flatpickr("#datepicker", {
  altInput: true,
    confirmIcon: "<i class='fa fa-check'></i>", // your icon's html, if you wish to override
    confirmText: "OK ",
    showAlways: false,
    enableTime: true
    // theme: "light" // or "dark"
})
