const path = require("path");

const MiniCssExtractPlugin = require("mini-css-extract-plugin");

module.exports = {
  entry: ["./assets/javascripts/app.js", "./assets/stylesheets/app.css"],
  module: {
    rules: [
      {
        test: /\.css$/i,
        use: [
          MiniCssExtractPlugin.loader,
          {
            loader: "css-loader",
            options: {
              importLoaders: 1,
            },
          },
          "postcss-loader",
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
    }),
  ],
};
