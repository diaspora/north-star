const path = require("path");

const base = require("./_base");

module.exports = Object.assign({}, base, {
  mode: "development",
  devtool: "source-map",
  devServer: {
    contentBase: false,
    compress: true,
    port: 9393
  }
});
