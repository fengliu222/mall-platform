define(function(require,exports,module){

	module.exports = {
		getRank: function(cont,type){
			$.get("/api/index/ranklist",{type:type}).done(function(res){
				if(!res) return;
				cont(null,res,type);
			})
		},
		getNewgoods: function(cont,gameid){
			$.get("/api/getNewgoods").done(function(res){
				if(!res) return;
				if(res.code == 200) cont(null,res.data);
			})
		},
		getNewgoodsById: function(cont,gameid,index){
			$.get("/api/getNewgoodsById").done(function(res){
				if(!res) return;
				if(res.code == 200) cont(null,res.data,index);
			})
			
		}
	}
	
})