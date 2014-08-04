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
	var compoObj = null;

	/* 将所有组件加载完的事件加入到window中*/

	$(function(){
		/* 已加载的模块数量 */
		var hasLoadCount = 0;
		/* 得到所有组件的包裹元素 */
		compoArr = getElementsByAttribute("data-component");

		for(var i=0;i<compoArr.length;i++){
			var compoName = $(compoArr[i]).data("component");
			var moduleSrc= "/assets/js/modules/"+compoName;
			require.async(moduleSrc,function(){
				console.log(arguments)
				hasLoadCount++;
				if(hasLoadCount==compoArr.length){
					$(document).trigger("componentsReady");
				}
			})
		}
	})


})  