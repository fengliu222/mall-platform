
/**
 * [全站通用模块]
 * 修改前请考虑所做的修改是否是全站通用的
 * 如果不是，最好考虑用其他变通方法
 * By moe
 */

define(function(require,exports,module){

	/* 全站设置的全局变量 */
	window.siteConfig={}

	/* 组件加载器 */
	var componentsLoader = require("./modules/componentsLoader");

	$(document).on("componentsReady",function(){
		console.log(1)
	})

})