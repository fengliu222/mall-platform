define(function(require,exports,module){
	var rankListTemp = require("template/index.ranklist");
	var goodsListTemp = require("template/index.newgoods");

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

 		var rankTab = new tabs({
 			element:".m-rank",
 			triggers:'.m-rank-tabs a',
 			panels:'.m-rank-listwrap .m-rank-content',
 			triggerType :"click",
 			activeIndex:0,
 			activeTriggerClass:"u-tabs-active" 
 		});

 	})
 	
 	/* 快速充值的游戏选择 */
 	seajs.use(['arale/select/0.9.9/select'],function(Select){
 		var gameSelect = new Select({
			trigger:'#gameRecharge',
			classPrefix: 'u-gamerecharge',
			model:gameList
		});
 	})

	module.exports = {
	 	rankTabInit:function(onchange){
		 	seajs.use(['arale/switchable/1.0.2/tabs','$'], function(tabs, $){
		 		var rankTab = new tabs({
		 			element:".m-rank",
		 			triggers:'.m-rank-tabs a',
		 			panels:'.m-rank-listwrap .m-rank-content',
		 			triggerType :"click",
		 			activeIndex:0,
		 			activeTriggerClass:"u-tabs-active" 
		 		});

		 		rankTab.on("change:activeIndex",function(to,from){
		 			onchange(to);
		 		})
		 	})
	 	},
		rankRender:function(cont,res,index){
			 
			var rankListHTML= rankListTemp(res.data.rank[0]);
			$(".m-rank-content").eq(index).empty().html(rankListHTML);
			 
		},
		goodsListRender:function(cont,res,index){
			var goodsListHTML = goodsListTemp(res);

		},
		listSlideInit: function(cont){
			seajs.use(['arale/switchable/1.0.2/slide','$'], function(slide, $){
				var goodsSlide = new slide({
					element:".m-newgoods",
					effect:"scrollx",
					activeIndex:0,
					triggerType :"click",
					duration: 300,
					triggers:".m-newgoods-gamelist a",
					easing :"easeBoth"
				}).render();

				cont(null,goodsSlide);
			})
		},

		updateListContent: function(cont,res){
			if(!res.list) return;
			for(var i in res.list){
				var gamename = res.list[i].gamename;
				var gameid = res.list[i].gameid;

				$(".m-newgoods-gamelist").append("<a href='###' data-gameid='"+gameid+"'>"+gamename+"</a>");
				var contentHTML = goodsListTemp(res.list[i]);

				$(".m-newgoods-contentwrap").append('<article class="m-newgoods-content">'+contentHTML+'</article>')

			}

			cont();
		},

		updateListByIndex: function(cont,res,index){
			var contentHTML = goodsListTemp(res);
			$(".m-newgoods-content").eq(index).empty().html(contentHTML)
		}
	}
})