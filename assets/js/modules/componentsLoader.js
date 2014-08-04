define(function(require,exports,module){
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
    
    /* 需要加载的组件列表 */
	window.compoObj = null;

	/* 将所有组件加载完的事件加入到window中*/

	$(function(){
		/* 已加载的模块数量 */
		var hasLoadCount = 0;
		/* 得到所有组件的包裹元素 */
		compoArr = getElementsByAttribute("data-component");

		for(var i=0;i<compoArr.length;i++){

			/* 解析组件名，拼模块地址 */
			var compoName = $(compoArr[i]).data("component");
			var moduleSrc= "/assets/js/modules/"+compoName;

			/* 为模块生成一个ID，若指定ID，则使用指定的ID */
			var compoID = $(compoArr[i]).data("component-id");
			compoID = compoID ? compoID : (+new Date());

			/* 异步加载组件模块，给组件模块定义上下文环境 */
			require.async(moduleSrc,function(obj){
				compoObj[compoID]=obj;
				hasLoadCount++;

				/* 为模块定义上下文*/
				obj({context:$(compoArr[i])})

				/* 触发指定DOM的loadReady事件*/
				$(compoArr[i]).trigger("loadReady");

				/* 若所有模块都加载完毕，则触发全局的componentsReady事件*/
				if(hasLoadCount==compoArr.length){
					$(document).trigger("componentsReady");
				}
			})
		}
	})


})  