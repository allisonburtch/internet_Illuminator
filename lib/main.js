//this will help the internet

var pageMod = require("sdk/page-mod");
var data = require("sdk/self").data;

pageMod.PageMod({
	include: ["*"],
	contentScriptFile: [data.url("brands.js")]
});

