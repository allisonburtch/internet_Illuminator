var pageMod = require("sdk/page-mod");
var data = require("sdk/self").data;
var workers = require("sdk/content/worker");

pageMod.PageMod({
	include: ["*"],
	contentScriptFile: [ data.url("data.json"), data.url("jquery-2.1.1.min.js"), data.url("brands.js")]
});
