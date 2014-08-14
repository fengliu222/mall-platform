define(function(require,exports,module){

	module.exports = {
		getRank: function(cont,type){
			$.get("/api/index/ranklist",{type:type}).done(function(res){
				if(!res) return;
				cont(null,res);
			})
		}
	}
	
})