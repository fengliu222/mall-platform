
/**
 * 组件加载器
 * @param  {[type]} require
 * @param  {[type]} exports
 * @param  {[type]} module
 * @return {[type]}
 * By moe
 */
define(function(require,exports,module){
	var widgetTemp = {};
	/**
	 * getElementsByAttribute
	 * @param  {[type]} attr  [description]
	 * @param  {[type]} value [description]
	 * @return {[type]}       [description]
	 */
	var getElementsByAttribute = function (attr, value) {
	  var match = [];
	 
	  var elements = document.getElementsByTagName("*");
	  for (var ii = 0, ln = elements.length; ii < ln; ii++) {
		if (elements[ii].hasAttribute(attr)) {
		  if (value) {
			if (elements[ii].getAttribute(attr) === value) {
			  match.push(elements[ii]);
			}
		  } else {
			match.push(elements[ii]);
		  }
		}
	  }
	  return match;
	};
    
    var dispatch = function(compoArr,callback){
    	/* 已加载的模块数量 */
		var hasLoadCount = 0;
    	compoArr = compoArr || [];
    	for(var i=0;i<compoArr.length;i++){

			/* 解析组件名，拼模块地址 */
			var compoName = $(compoArr[i]).data("component");
			var moduleSrc= "/assets/js/modules/"+compoName;


			/* 异步加载组件模块，给组件模块定义上下文环境 */
			(function(index){
				require.async(moduleSrc,function(obj){
					/* 为模块生成一个ID，若指定ID，则使用指定的ID */
					var _data = $(compoArr[index]).data();
					var compoID = _data.requireId ? _data.requireId : (+new Date());

					define(compoID,function(require,exports,module){
						if(!widgetTemp[compoID]){
							widgetTemp[compoID] = obj({
								context:$(compoArr[i])
							})
							module.exports = widgetTemp[compoID];
						}else{
							module.exports = widgetTemp[compoID];
						}
						
					});

					/* 表示模块加载完成 */
					hasLoadCount++;

					/* 为模块定义上下文*/
					// if(typeof obj == "function") obj({context:$(compoArr[index])})

					/* 触发指定DOM的loadReady事件*/
					$(compoArr[index]).trigger("loadReady");
					/* 若所有模块都加载完毕，则触发全局的componentsReady事件*/
					if(hasLoadCount==compoArr.length){
						callback && callback();
						
					}
				})
			})(i)
		}
    }

    jQuery.fn.watch = function( id, fn ) {

	    return this.each(function(){
	    	
	        var self = this;
	         
	        var oldVal = self[id].length;
	        $(self).data(
	            'watch_timer',
	            setInterval(function(){
	             
	                if (self[id].length !== oldVal) {
	                    fn.call(self, id, oldVal, self[id]);
	                    oldVal = self[id].length;
	                }
	            }, 100)
	        );

	    });

	    return self;
	};

	jQuery.fn.unwatch = function( id ) {

	    return this.each(function(){
	        clearInterval( $(this).data('watch_timer') );
	    });

	};
    /* 需要加载的组件列表 */
	window.compoObj = {};

	$(function(){
		
		/* 得到所有组件的包裹元素 */
		var compoArr = getElementsByAttribute("data-component");
		dispatch(compoArr,function(){
			$(document).trigger("componentsReady");
		})
		

		$(document).watch("all",function(){
	 
			var _newCompoArr = getElementsByAttribute("data-component");
			var filtArr = _newCompoArr.filter(function(newItem){
				for(var oldItem in widgetTemp){
					if($(newItem).data("requireId") == oldItem){
						return false
					}
				}

				return true;
			})

			dispatch(filtArr);
		})
	})


})  