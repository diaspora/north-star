const base = require("./_base");

module.exports = Object.assign({}, base, {
  devtool: "source-map",
  mode: "production",
  stats: "errors-only"
});
