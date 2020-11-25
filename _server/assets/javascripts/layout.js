document.addEventListener("DOMContentLoaded", () => {
  let headerContainer = document.getElementById("header");
  document.querySelector(".mobile-menu-toggler button").addEventListener("click", (ev) => {
    ev.preventDefault();
    headerContainer.classList.toggle("mobile-menu-open");
  });
});
