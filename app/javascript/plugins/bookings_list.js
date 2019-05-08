const bookingsListDrop = () => {
  const bookings = document.querySelector(".bookings-nb");
  if (bookings) {
    const listBookings = document.querySelector("#bookings-list-drop");
    const listNames = document.querySelector(".bookings-names-list");
    listNames.style.display = "none"
    listBookings.addEventListener("click", (event) => {
      if (listNames.style.display === "none") {
        listNames.style.display = "";
      } else {
        listNames.style.display = "none";
      }
    });
  }
};

export { bookingsListDrop };
