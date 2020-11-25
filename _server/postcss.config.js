let config = {
  plugins: [
    require("tailwindcss"),
    require("postcss-nested"),
    require("autoprefixer"),
  ],
};

if (process.env.NODE_ENV == "production") {
  config.plugins.push(
    require("cssnano")({
      preset: "default",
    })
  );
}

module.exports = config;
