define(function(require){
	var template = require("../template/index.newgoods");

	var goodsData = {
		item:{
			name:"moe"
		}
	}
	$.get("/index/getList");
	$("#list").on("loadReady",function(data){
		console.log(">>loadReady ",data)
	})
})