//this will help the internet

var pageMod = require("sdk/page-mod");
var data = require("sdk/self").data;

pageMod.PageMod({
	include: ["*"],
	contentScriptFile: [data.url("jquery-2.1.0.min.js"), data.url("brands.js")]
});

