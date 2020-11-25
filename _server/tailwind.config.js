const colors = require("tailwindcss/colors");

module.exports = {
  purge: {
    content: ["./views/**/*.erb"],
    mode: "all",
  },
  darkMode: false,
  theme: {
    screens: {
      sm: "640px",
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
