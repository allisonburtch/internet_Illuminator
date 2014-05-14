
var regexpString = '';

for(var key in brands) {
    regexpString += (key + '|');
}

var regexp = new RegExp(regexpString.substr(0, regexpString.length - 1), 'g');

function replaceWord(){
    var nodes = textNodesUnder(document.body);
    var len = nodes.length;
    for (var n = 0; n < len; n++) {
    	nodes[n].textContent = nodes[n].textContent.replace(regexp, function(match) {
    		return match + " (" + brands[match] + ")";
		});
    }
}

function textNodesUnder(el){
	var n;
	var a = [];
	var walk = document.createTreeWalker(el, NodeFilter.SHOW_TEXT, null, false);
	while (n = walk.nextNode()){
		a.push(n);
	}
 	return a;
}

replaceWord();
