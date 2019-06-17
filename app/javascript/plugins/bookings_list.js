const bookingsListDrop = () => {
  const bookings = document.querySelector(".bookings-nb");
  if (bookings) {
    const listBookings = document.querySelectorAll(".bookings-list-drop");
    const listNames = document.querySelectorAll(".bookings-names-list");


    // name.style.display = "none"

    listBookings.forEach((booking) => {
    booking.addEventListener("click", (event) => {
        listNames.forEach((name) => {
      if (name.style.display = "none") {
        name.style.display = "";
      } else {
        name.style.display == "none";
      }
    });
  })
    });
    };
};


export { bookingsListDrop };
