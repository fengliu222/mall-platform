(function($){
	var _default = {
		links:{},
		before:function(){},
		after:function(){}
	};

	function mTabs (options){

		if( !options){
			throw new Error("Mtabs should has a param.Maybe an Array or an Object.");
			return;
		}
 		
 		if( isArray(options) ){
 			for(var i = 0,l = options.length; i < l; i++){
 				var curObj = options[i];
 				new mTabs(curObj);
 			}
 		}else if( !isEmptyObject(options) || (options.links && !isEmptyObject(options.links)) ){

			this.options = $.extend({
				links:{},
				before:function(){},
				after:function(){}
			},options)
 			for(var key in options.links){
 				this.init(key,options.links[key]);
 			}

 		}else{
 			throw new Error("mTabs's arguments error!");
			return;
 		}

	}

	mTabs.prototype.init = function(tabs,contents){
		var tabSelector = $(tabs),
			contentSelector = $(contents),
			tabChild = tabSelector.children(),
			contentChild = contentSelector.children(),
			self = this;
		if(!tabSelector.length || !contentSelector.length || !tabSelector.children().length || !contentSelector.children().length){
			throw new Error("Tabs param error!");
			return 
		}

		contentChild.hide().end().find(":first").show();

		tabChild.each(function(index){

			$(this).on("click",function(){

				self.options.before(index,contentChild.eq(index));

				contentChild.hide();
				contentChild.eq(index).show();
				self.options.after(index,contentChild.eq(index));
			})
		})
	}


	$.mTabs = function(options){
		new mTabs(options)
	}


	function isEmptyObject(obj){
		for (var key in obj){
			return false
		}
		return true;
	}

	function isArray(arr){
		return typeof arr.sort == "function"
	}

})(jQuery)