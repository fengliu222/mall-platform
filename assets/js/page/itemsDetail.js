define(function(require,exports,module){
	
	// var Widget = require('widget');

	// require("Thenjs");
	
	// var inputNumTemp = require("template/inputnum");
	
	/*  Tabs —— 商品介绍、购买说明*/
	seajs.use(['arale/switchable/1.0.2/tabs','$'], function(tabs, $){
 		var fastTab = new tabs({
 			element:"#items-message",
 			triggers:'#items-message .m-message-title h2',
 			panels:'#items-message .m-message-content>div',
 			activeTriggerClass:"m-title-choose" 
 		})  
  
 	})
	/*  商品介绍、购买说明 */

	// seajs.use(['arale/dialog/1.3.0/confirmbox'],function(ConfirmBox){
	// 	var confirm = new ConfirmBox({
	// 		trigger: '.m-buy-btn',
	// 		title: '订单确认'
	// 	});
		

	// });

	seajs.use(['arale/dialog/1.3.0/confirmbox','$'], function(ConfirmBox,$) {
	    var confirm = new ConfirmBox({
	        trigger: '.m-buy-btn',
	        title: '订单确认',
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


	// module.exports = {
	// 	inputNumRender: function(cont,res){
	// 		var inputNumHTML= inputNumTemp(res.data);
	// 		$(".m-buy-num").html(inputNumHTML);
	// 	}
	// }

	$(function(){
		
		/* 关注 */
		$(".m-buy-follow").click(function(){
			$(this).find(".m-follow-content").html("已关注");
			$(this).css("cursor","default");
			$(this).css("color","");
			var num = parseInt($(this).find(".m-follow-num").html())+1;
			$(this).find(".m-follow-num").html(num);

			$(".m-follow-tip").show(400);
			
			setTimeout(function(){
				$(".m-follow-tip").hide();
			},2000);

			$(".m-buy-follow").unbind("click");
		
		});

		/* 关注 */

		var saleState = $("#outofDate").val();
		if(saleState == 0){
			$(".m-buy-btn").css("display","none");
			$(".m-buy-nonebtn").css("display","block");
		}
	})
	


	

	// Widget.autoRenderAll(function() {
	// 	var numInput = Widget.query("#input-number");
	// 	var msg = $(".u-inputnum-tip");

	// 	/* 使用aspect暴露的接口 */
	// 	numInput.after('change', function(result, num) {
	// 		if(!result) {
	// 			msg.addClass("error").html("输入错误");
	// 			return;
	// 		}

	// 		if(num >= 0) {
	// 			msg.removeClass("error").html("剩余" + num + "件库存");
	// 		} else {
	// 			msg.addClass("error").html("库存不足");
	// 		}
	// 	});
	// });

	

})
