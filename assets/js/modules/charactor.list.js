define(function(require,exports,module){

	var charactorlist = function(opt){
		this.name = null;
		if(opt){
			this.context = opt.context || $("body");
		}
	}

	module.exports = function(opt){
		return new charactorlist(opt);
	}
})