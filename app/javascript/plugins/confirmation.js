const removeNavbar = () => {
  const navbar = document.querySelector(".navbar-fixed-bottom navbar");
  if (window.location.pathname.includes("confirmation")){
    navbar.classList.add("hidden")
   };
};

export { removeNavbar };
