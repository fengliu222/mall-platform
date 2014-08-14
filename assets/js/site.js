
/**
 * [全站通用模块]
 * 修改前请考虑所做的修改是否是全站通用的
 * 如果不是，最好考虑用其他变通方法
 * By moe
 */

define(function(require,exports,module){
	window.gameList = [
		{value:'天龙', text:"天龙八部"},
		{value:'鹿鼎记', text:"鹿鼎记"},
		{value:'新水浒Q传', text:"新水浒Q传"}
	]

	/* 搜索框 —— 选择游戏 组件初始化*/
	seajs.use(['arale/select/0.9.9/select'],function(Select){
		var gameSearch = new Select({
			trigger:'#gameSelect',
			classPrefix: 'u-gameselect',
			model:gameList
		});
	})
 

})