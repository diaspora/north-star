const path = require("path");

const MiniCssExtractPlugin = require("mini-css-extract-plugin");

module.exports = {
  entry: [
    "./assets/javascripts/app.js",
    "./assets/stylesheets/app.scss"
  ],
  module: {
    rules: [
      {
        test: /\.s[ac]ss$/i,
        use: [
          MiniCssExtractPlugin.loader,
          "css-loader",
          "sass-loader",
        ],
      },
    ],
  },
  output: {
    filename: "app.js",
    path: path.resolve(__dirname, "..", "..", "statics", "assets"),
  },
  plugins: [
    new MiniCssExtractPlugin({
      filename: "app.css",
      path: path.resolve(__dirname, "..", "..", "statics", "assets"),
    }),
  ]
};
