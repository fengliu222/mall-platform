define(function(require,exports,module){
	var rankListTemp = require("template/index.ranklist");
	var goodsListTemp = require("template/index.newgoods");


	seajs.use(['arale/dialog/1.3.0/confirmbox'], function(ConfirmBox) {
 
	    var cb = new ConfirmBox({
	        trigger: '.m-header-saleBtn',
	        title: '我真是标题啊',
	        message: '我是内容 我是内容',
	        onConfirm: function() {
	            var that = this;
	            this.set('title', '三秒后关闭对话框');
	            this.set('message', '不要啊！！');
	            setTimeout(function() {
	                that.hide();
	            }, 3000);
	        }
	    });
	});
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

 	})
 	
 	
	module.exports = {

		/**
		 * 排行榜Tab初始化
		 * @param  {[type]} onchange [触发onchange事件时的回调]
		 * @return {[type]}          [description]
		 */
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

	 	/**
	 	 * 根据页签index更新页签内容
	 	 * @param  {[type]} cont  [description]
	 	 * @param  {[type]} res   [description]
	 	 * @param  {[type]} index [description]
	 	 * @return {[type]}       [description]
	 	 */
		rankRender:function(cont,res,index){
			 
			var rankListHTML= rankListTemp(res.data.rank[0]);
			$(".m-rank-content").eq(index).empty().html(rankListHTML);
			 
		},

		/**
		 * 最新上架slide效果的初始化
		 * @param  {[type]} cont [description]
		 * @return {[type]}      [description]
		 */
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

		/**
		 * 更新最新上架内容，本方法更新所有游戏的内容
		 * @param  {[type]} cont [description]
		 * @param  {[type]} res  [description]
		 * @return {[type]}      [description]
		 */
		updateListContent: function(cont,res){
			if(!res.list) return;
			var linkLength = $(".m-newgoods-gamelist").find("a").length;
			
			for(var i in res.list){
				var gamename = res.list[i].gamename;
				var gameid = res.list[i].gameid;

				if(linkLength){
					$(".m-newgoods-contentwrap").find(".m-newgoods-content").eq(i).html(contentHTML);
				}else{

					/* 首页第一次加载LIST的时候，需要动态创建标签和容器 */
					$(".m-newgoods-gamelist").append("<a href='###' data-gameid='"+gameid+"'>"+gamename+"</a>");
					
					var contentHTML = goodsListTemp(res.list[i]);
					$(".m-newgoods-contentwrap").append('<article class="m-newgoods-content">'+contentHTML+'</article>')
				}
			}

			cont();
		},

		/**
		 * 根据指定index来更新最新上架内容
		 * @param  {[type]} cont  [description]
		 * @param  {[type]} res   [description]
		 * @param  {[type]} index [description]
		 * @return {[type]}       [description]
		 */
		updateListByIndex: function(cont,res,index){
			var contentHTML = goodsListTemp(res);
			$(".m-newgoods-content").eq(index).empty().html(contentHTML)
		}
	}
})