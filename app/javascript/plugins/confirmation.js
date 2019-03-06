const removeNavbar = () => {
  const navbar = document.querySelector(".navbar-fixed-bottom");
  if (window.location.pathname.includes("bookings/new")){
    navbar.classList.add("hidden")
   };
};

export { removeNavbar };
