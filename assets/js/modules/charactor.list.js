define(function(require,exports,module){
	var Widget = require("widget");

	var charactorlist = Widget.extend({
		attrs:{
			name : "1"
		},
		setup: function(){
			 
		}
	})
	module.exports = function(opt){

		return new charactorlist(opt);
	}
})