var brands = require('../data/brands.js')

exports["test replace"] = function(assert) {
  var observed = brands.replace('hsaoehoeu aoe  oeht Lightlife tnoaetnsoeu')
  var expected = 'hsaoehoeu aoe  oeht Lightlife (ConAgra) tnoaetnsoeu')
  assert.equal(observed, expected)
};

require("sdk/test").run(exports);
