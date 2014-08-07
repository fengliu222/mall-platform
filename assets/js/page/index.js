define(function(require){
	var template = require("../template/index.newgoods");

	var goodsData = {
		item:{
			name:"moe"
		}
	}
 
	$(document).on("componentsReady",function(data){
		console.log(">>loadReady ",data)

		seajs.use("charactor-list",function(obj){
			obj.set("a","123")
		});	

		seajs.use("charactor-list",function(obj){
			console.log(obj)
		});

 		setTimeout(function(){
 			$("body").append('<div class="aa" data-component="charactor.list" data-require-id="mm-list"></div>');
 		

 		},2000);
	})
})