define(function(require,exports,module){

	var charactorlist = function(){
		this.name = null;
	}

	exports = function(opt){
		return new charactorlist(opt);
	}
})