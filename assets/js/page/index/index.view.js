define(function(require,exports,module){
	var rankListTemp =require("template/index.ranklist");

	/* 首页Banner slide */
	seajs.use(['arale/switchable/1.0.2/slide','$'], function(slide, $){
		var indexSlide = new slide({
			element:"#index-slide",
			effect:"scrolly",
			activeIndex:0,
			triggers:"#index-slide .m-slide-carouselThumb li"

		}).render();

		indexSlide.on("change:activeIndex",function(toIndex, fromIndex){
			
			/* 边框滚动 */
			var borderEle = this.element.find(".m-slide-border");
			borderEle.animate({
				top:(borderEle.height()+4)*toIndex
			})
		})

		var noticeSlide = new slide({
			element:"#index-slideNotice",
			effect:"scrolly",
			activeIndex:0
		})
	})


 	/* tabs */
 	seajs.use(['arale/switchable/1.0.2/tabs','$'], function(tabs, $){

 		// 直充、公告
 		var fastTab = new tabs({
 			element:"#index-fast",
 			triggers:'#index-fast .m-fast-tabs a',
 			panels:'#index-fast .m-fast-content>div',
 			activeTriggerClass:"u-tabs-active" 
 		})  
  
 		// 人气排行、历史排行
 	})
 	
 	/* 快速充值的游戏选择 */
 	seajs.use(['arale/select/0.9.9/select'],function(Select){
 		var gameSelect = new Select({
			trigger:'#gameRecharge',
			classPrefix: 'u-gamerecharge',
			model:gameList
		});
 	})

 

 	/* 合作游戏的鼠标滑动效果 */


	module.exports = {
		rankRender:function(cont,res){
			var rankListHTML= rankListTemp(res.data);
			$(".m-rank-listwrap").empty().html(rankListHTML);
		}
	}
})