define(function(require, exports, module){

	var componentsLoader = require("./../modules/selectServer");

	/* select 筛选项的下拉菜单 */
	seajs.use(['arale/select/0.9.9/select'], function(Select) {
		new Select({
			trigger: '#games',
			model: [
				{value:'option1', text:'选择游戏'},
				{value:'option2', text:'水浒Q传', selected: true},
				{value:'option3', text:'天龙八部'},
				{value:'option3', text:'鹿鼎记', disabled: true}
			]
		}).render();

		$(".ui-select").append('<i class="f-iconfont icon-up">&#xe60a;</i>');
	});

	// 自定义事件
	$(".js-btn-more").click(function(){
		$(".m-choice").toggleClass("h-flag");
	});


});