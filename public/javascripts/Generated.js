(function () { "use strict";
var Application = function() { };
Application.main = function() {
	var usagi = Human.getInstance("うさぎ");
	var tsuda = Human.getInstance("津田ネキ");
	var isTsudaneki = false;
	new js.JQuery("#test").html(usagi.askOrder());
	new js.JQuery("#toggle").click(function() {
		if(isTsudaneki) new js.JQuery("#test").html(usagi.askOrder());
		else new js.JQuery("#test").html(tsuda.askOrder());
		isTsudaneki = !isTsudaneki;
	});
};
var Human = function(id,name) {
	this.id = id;
	this.name = name;
};
Human.getInstance = function(name) {
	return new Human(Human.numberOfInstances++,name);
};
Human.prototype = {
	askOrder: function() {
		return "ご注文は" + this.name + "ですか?";
	}
};
var js = {};
var q = window.jQuery;
js.JQuery = q;
Human.numberOfInstances = 0;
Application.main();
})();
