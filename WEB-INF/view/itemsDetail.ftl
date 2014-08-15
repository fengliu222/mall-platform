<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>ItemsDetail</title>
	<meta name="keywords" content=""/>
	<meta name="description" content=""/>
	<meta name="viewport" content="width=device-width"/>
	<link rel="stylesheet" type="text/css" href="${assets}/css/site.css">
	<link rel="stylesheet" type="text/css" href="${assets}/css/modules/itemsDetail.css">
</head>
<body>
	<div class="g-doc m-container">
		
		<#-- 引入头部 -->
		<#include "./header.ftl">
		<#-- /引入头部 -->

		<#-- 面包屑导航 -->
		<div class="g-body m-banner">
			<div class="g-center m-banner-content">
				您的位置：
				<a href="###">天龙八部站</a>
				>
				<a href="###">交易中心</a>
				>
				<a href="###" class="m-itemsdetail">道具详情</a>
			</div>
		</div>
		<#-- /面包屑导航 -->

		<div class="g-body m-items">

			<div class="g-center m-items-content">
				
				<div class="g-main m-goods">
					<div class="g-main m-itemsImg">
						<img src="${assets}/img/itemsDetail/items_img.jpg" alt="">
					</div>

					<div class="g-main m-items-infor">
						<h2 class="m-items-name">
							<#-- 高级星石淬火精炼 -->
							${items.name}
						</h2>
						<label class="m-items-num">商品编号：</label>
						<span class="m-items-number">
							<#-- 201407261402472203 -->
							${items.number}
						</span>
						<div class="f-clearfix"></div>
						<form>
							<ul class="m-items-list">
								<li>
									游&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;戏：
									<span class="m-list-game">
									<#-- 新水浒Q传 -->
									${items.game} 
									</span> 
								</li>
								<li>
									使用等级：
									<span class="m-list-level">
									<#-- 不限 -->
									${items.level}
									</span>
								</li>
								<li>
									绑定情况：
									<span class="m-list-bind">
									<#-- 无绑定 -->
									${items.bind}
									</span>
								</li>
								<li>
									销售状况：
									<span class="m-list-sale">
									<#-- 待售中 -->
									${items.sale}
									</span>
								</li>
								<li>
									剩余时间：
									<span class="m-list-time">
									<#-- 10天02小时03分钟 -->
									${items.time}
									</span>
								</li>
							</ul>
						</form>
						
						<div class="m-items-buy">
							<form action="">
								<div class="m-buy-content1">
									<label>价&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;格：</label>
									<span class="m-buy-points">
										<span class="m-money-points">
										<#-- 320 -->
										${items.points}
										</span>
										点
									</span>
									<span class="m-buy-coin">
										<span class="m-money-coin">
										<#-- 1600 -->
										${items.coin}
										</span>
										元宝
									</span>
								</div>
								<div class="m-buy-content2">
									<label for="">购买数量:</label>
									<div class="m-buy-num"></div>
									<div class="f-clearfix"></div>
								</div>
								<div class="m-buy-content3">
									<input type="hidden" id = "outofDate" value = "${items.outofDate}">
									<button class="m-buy-btn">立即购买</button>
									<button class="m-buy-nonebtn" disabled="false">立即购买</button>
									<#-- <div class="m-buy-cue mr20">
										<i class="f-iconfont m-buy-tip">&#xe60e;</i>
										购买提示
									</div> -->
									<div class="m-buy-follow mr20">
										<span class="m-follow-click"></span>
										<span class="m-follow-content">关注</span>
										(<label class="m-follow-num">${items.follownum}</label>)
									</div>
									<span class="m-follow-tip">+1</span>
									<div class="f-clearfix"></div>
								</div>
								
							</form>
						</div>
					</div>

					<div class="m-items-tips">
						<div class="m-tips m-tips-save">
							<span class="m-tips-img"></span>
							<div class="m-tips-content">
								<h4>100%安全承诺</h4>
								<p>官方授权交易平台</p>
							</div>
							<div class="f-clearfix"></div>
						</div>
						
						<div class="m-tips m-tips-send">
							<span class="m-tips-img"></span>
							<div class="m-tips-content">
								<h4>闪电发货</h4>
								<p>付款即发货</p>
							</div>
							<div class="f-clearfix"></div>
						</div>
						
						<div class="m-tips m-tips-pickup">
							<span class="m-tips-img"></span>
							<div class="m-tips-content">
								<h4>角色取货</h4>
								<p>登陆游戏直接取货</p>
							</div>
							<div class="f-clearfix"></div>
						</div>
					</div>

					<div class="f-clearfix"></div>
					
					<div class="m-items-message" id="items-message">
						<div class="m-message-title">
							<h2 class="m-title-intro m-title-choose">商品介绍</h2>
							<h2 class="m-title-explain">购买说明</h2>
						</div>

						<div class="m-message-content">
							
							<div class="m-message-tap">
								<#-- 商品介绍 -->
								<div class="m-intro">
									${items.intro}
								</div>
								<#-- /商品介绍 -->

								<#-- 最近浏览 -->
								<div class="m-recently">
									<div class="m-recently-title">
										<h2>最近浏览</h2>
									</div>
									<div class="m-recently-list">
										<ul>
											<li>
												<img src="./assets/img/itemsDetail/recently_items.jpg" alt="">
												<div>
													<span>高级星石淬炼丹药</span>
													<span>
														原价：
														<label>1100</label>
														元宝
													</span>
													<span>
														售价：
														<label>200</label>
														点
													</span>
												</div>
											</li>
										</ul>
									</div>
								</div>
								<#-- /最近浏览 -->
							</div>

							<div class="m-message-tap2">
								<#-- 购买说明 -->
								<div class="m-explain">
									<div class="m-explain-list"></div>
									<div class="m-explain-content m-explain-buy">
										<h3>我是买家</h3>
										<p>简单购买 步步为营</p>
										<a href="###">挑选商品</a>
										<i class="f-iconfont">&#xe609;</i>
										<a href="###">快捷支付</a>
										<i class="f-iconfont">&#xe609;</i>
										<a href="###">游戏取货</a>
										<div class="f-clearfix"></div>
									</div>
									<div class="m-explain-list"></div>
									<div class="m-explain-content m-explain-sell">
										<h3>我是卖家</h3>
										<p>一键提交 轻松上架</p>
										<a href="###">游戏寄售</a>
										<i class="f-iconfont">&#xe609;</i>
										<a href="###">自动上架</a>
										<i class="f-iconfont">&#xe609;</i>
										<a href="###">商品卖出</a>
										<i class="f-iconfont">&#xe609;</i>
										<a href="###">提取现金</a>
										<div class="f-clearfix"></div>
									</div>
								</div>
								<#-- /购买说明 -->		
								
								<#-- 帮助中心 建议反馈 -->
								<div class="m-message-help">
									<a href="###" class="m-help-helper">* 帮助中心</a></li>
									<a href="###" class="m-help-back">建议反馈</a>
								</div>
								<#-- /帮助中心 建议反馈 -->
							</div>				
						</div>
					</div>
				</div>

				<div class="g-sidebar m-sidebar">

					<#-- 侧边栏广告位 -->
					<div class="g-siderbar m-ad">
						<a href="">
							<img src="${assets}/img/itemsDetail/ad_tl.jpg" alt="">	
						</a>
					</div>
					<#-- /侧边栏广告位 -->

					<#-- 推荐商品 -->
					<div class="m-items-recommend">
						<div class="u-widget-title m-recommend-title">
							<div class="u-corner-lt"></div>
							<div class="u-corner-rb"></div>
							<h2>推荐商品</h2>
							<a href="###">换一批</a>
						</div>
						<div class="m-recommend-list">
							<ul>
								<li>
									<img src="./assets/img/itemsDetail/recommend_items.jpg" alt="">
									<div class="m-recommend-content">
										<span>[明教 男 119级]</span>
										<span>ご麦斯威尔ご</span>
									</div>
									<div class="m-recommend-price">
										￥<label>360</label>
									</div>	
								</li>
							</ul>
						</div>
					</div>
					<#-- /推荐商品-->

					<#-- 官方特卖榜 -->
					<div class="m-items-special">
						<div class="u-widget-title m-special-title">
							<div class="u-corner-lt"></div>
							<div class="u-corner-rb"></div>
							<h2>官方特卖榜</h2>
							<a href="###">更多>></a>
						</div>
						<div class="m-special-list">
							<ul>
								<li>
									<img src="./assets/img/itemsDetail/recommend_items.jpg" alt="">
									<div class="m-special-content">
										<span>提神丹</span>
										<span>
											前台分类-后台分类
										</span>
									</div>
									<div class="m-special-price">
										<label>360</label>点
									</div>
								</li>
							</ul>
						</div>
					</div>
					<#-- /官方特卖榜 -->

					<#-- 浏览的商品 -->
					<div class="m-items-browse">
						<div class="u-widget-title m-browse-title">
							<div class="u-corner-lt"></div>
							<div class="u-corner-rb"></div>
							<h2>大家看了此商品后又看了</h2>
						</div>
						<div class="m-browse-list">
							<ul>
								<li>
									<img src="./assets/img/itemsDetail/recommend_items.jpg" alt="">
									<div class="m-browse-content">
										<span>提神丹</span>
										<span>
											前台分类-后台分类
										</span>
									</div>
									<div class="m-browse-price">
										<label>360</label>点
									</div>
								</li>
							</ul>
						</div>
					</div>
					<#-- /浏览的商品 -->

				</div>
			</div>
		</div>
	</div>
	
	<script id="seajsnode" src="${assets}/js/vendor/seajs/seajs/2.2.1/sea.js"></script>
	<script src="${assets}/js/vendor/seajs/seajs-combo/1.0.1/seajs-combo.js"></script>
	<script type="text/javascript" src="../assets/js/config.js?=1"></script>
	<script src="http://localhost:35729/livereload.js"></script>
	<script>
		seajs.use("${assets}/js/page/itemsDetail.js")
	</script>

</body>
</html>