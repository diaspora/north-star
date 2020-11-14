const path = require("path");

const base = require("./_base");

module.exports = Object.assign({}, base, {
  mode: "development",
  devtool: "source-map",
  devServer: {
    compress: true,
    contentBase: false,
    port: 9393,
    publicPath: "/"
  }
});
