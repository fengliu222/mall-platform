define(function(require){

	/* 首页Model层 */
	var model = require("./index.model");

	/* 初始化首页VIEW层 */
	var view = require("./index.view");

	var Widget = require("widget");
	var validator = require("validator");

	require("Thenjs");

 	$(function(){
 		/*  初始化首页排行榜 */
 		Thenjs(function(cont){
 			model.getRank(cont,0);
 		}).then(view.rankRender);
 		
 		 
 		/**
 		 * 充值游戏组件
 		 * @return {[type]}         [description]
 		 * By moe.
 		 */
 		var FastRecharge = Widget.extend({
 			attrs:{
 				/* 游戏名 */
 				curGame : '.m-fast-gamename',  

 				/* 充值金额 */
 				rechargecount: {
 					setter: function(num){
 						return this.$('[data-role="money"]').val(num);
 					},
 					getter: function(val){
 						return this.$('[data-role="money"]').val()
 					}
 				},

 				/* 验证码 */
 				code: {
 					value: '[data-role="code"]',
 					getter: function(val){
 						return $(val).val()
 					}
 				},
 				gamecount:{
 					setter:function(num){
 						num = num || 0
 						var curCount = num * 20;
 						this.$('[data-role=gamemoney]').html(curCount+"游戏点")
 					}
 				},
 				/* 上一次有效的充值金额 */
 				oldcount : "1",

 				/* 请求提交地址 */
 				url:'/api/fastrecharge'
 			},

 			/* 事件绑定 */
 			events:{
 				'click .m-fast-purchase':'purchase',
 				'keyup input[name="money"]':'validateMoney',
 				'click .m-fast-codedisplay':'changeCode',
 				'click .m-fast-changecode':'changeCode'
 			},

 			/* 初始化 */
 			setup:function(){
 				var that = this;

 				/* 表单验证 */
 				this.rechargeValidator = new validator({
 					element:'form[name="fastRecharge"]'
 				});

 				this.rechargeValidator.addItem({
 					element:'[name="money"]',
 					required: true,
 					rule:'number',
 					display:"充值金额",
 					onItemValidated: function(err,msg,ele){
 						var curCount = that.get("rechargecount");
 						var oldCount = that.get("oldcount");
 						
 						if(err=="number") that.set("rechargecount",oldCount);
 						if(err=="required") that.set("gamecount",0);
 						else if(!err) {
 							that.set("oldcount",curCount)
 							that.set("gamecount",curCount);
 						}
 					}
 				})

 				this.rechargeValidator.addItem({
 					element:'[data-role="code"]',
 					display:"验证码",
 					required: true
 				})
 			},

 			/* 点击充值按钮的处理函数 */
 			purchase:function(e){
 				e.preventDefault();

 				var that = this;

 				/* 验证前清除错误信息 */
 				this.$("[data-role='error']").empty()

 				/* 进行表单验证 */
 				var valideResult = this.rechargeValidator.execute(function(err,res,ele){
 					if(err) that.errorHandle(res);
 					else that.ajaxPurchase();
 				})
 
 			},

 			/* 充值请求 */
 			ajaxPurchase : function(){
 				this.$("[data-role='error']").empty().html("提交中...")

 			},

 			/* 验证充值金额 */
			validateMoney:function(e){
				var moneyValidate = this.rechargeValidator.query('[name=money]');
				moneyValidate.execute();
			},

			/* 更换验证码 */
			changeCode:function(e){
				e.preventDefault();

				var that = this;
				$.get("/api/getCode").done(function(res){
					if(res.code == 200){
						that.$(".m-fast-codedisplay").attr("src",res.data.src);
					}
				})
			},

			/* 错误信息处理 */
			errorHandle:function(e){
				for(var i in e){
					if(e[i][0]) this.$("[data-role='error']").empty().html(e[i][1])
				}
				
			}
 		})

 		var recharge = new FastRecharge({element:'form[name="fastRecharge"]'})
 	})
	  
})