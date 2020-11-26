const colors = require("tailwindcss/colors");

module.exports = {
  purge: {
    content: [
      "../contents/**/*.md",
      "./assets/javascripts/**/*.js",
      "./lib/layout_helpers.rb",
      "./views/**/*.erb",
    ],
    mode: "all",
  },
  darkMode: false,
  theme: {
    screens: {
      md: "768px",
      lg: "1024px",
    },
    extend: {
      colors: {
        gray: colors.trueGray,
        green: colors.lime,
      },
    },
  },
  variants: {
    extend: {},
  },
  plugins: [require("@tailwindcss/forms"), require("@tailwindcss/typography")],
};
