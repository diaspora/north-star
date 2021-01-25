document.addEventListener("DOMContentLoaded", () => {
  // simple, no-transition mobile header menu
  let menuToggler = document.getElementById("mobile-menu-toggler");
  if (menuToggler) {
    menuToggler.addEventListener("click", (ev) => {
      ev.preventDefault();
      document.getElementById("header").classList.toggle("mobile-menu-open");
    });
  }

  // responsible for redirecting the user after using the language selector
  let languageSelector = document.getElementById("language");
  if (languageSelector) {
    languageSelector.addEventListener("change", (ev) => {
      ev.preventDefault();
      window.location.replace(ev.target.value);
    });
  }
});
