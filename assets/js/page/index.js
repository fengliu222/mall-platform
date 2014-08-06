define(function(require){
	var template = require("../template/index.newgoods");

	var goodsData = {
		item:{
			name:"moe"
		}
	}
	console.log(template(goodsData))
	$("#list").on("loadReady",function(data){
		console.log(">>loadReady ",data)
	})
})