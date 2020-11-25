document.addEventListener("DOMContentLoaded", () => {
  // simple, no-transition mobile header menu
  document.getElementById("mobile-menu-toggler").addEventListener("click", (ev) => {
    ev.preventDefault();
    document.getElementById("header").classList.toggle("mobile-menu-open");
  });

  // responsible for redirecting the user after using the language selector
  document.getElementById("language").addEventListener("change", (ev) => {
    ev.preventDefault();
    window.location.replace(ev.target.value);
  });
});
