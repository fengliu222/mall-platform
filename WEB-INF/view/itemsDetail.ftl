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
						<h2 class="m-items-name">高级星石淬火精炼</h2>
						<label class="m-items-num">商品编号：</label>
						<span class="m-items-number">201407261402472203</span>
						<div class="f-clearfix"></div>
						<form>
							<ul class="m-items-list">
								<li>
									游&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;戏：
									<span class="m-list-game">新水浒Q传</span>
								</li>
								<li>
									使用等级：
									<span class="m-list-level">不限</span>
								</li>
								<li>
									绑定情况：
									<span class="m-list-bind">无绑定</span>
								</li>
								<li>
									销售状况：
									<span class="m-list-sale">待售中</span>
								</li>
								<li>
									剩余时间：
									<span class="m-list-time">10天02小时03分钟</span>
								</li>
							</ul>
						</form>
						
						<div class="m-items-buy">
							<form action="">
								<div class="m-buy-content1">
									<label>价&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;格：</label>
									<span class="m-buy-points">
										<span class="m-money-points">320</span>
										点
									</span>
									<span class="m-buy-coin">
										<span class="m-money-coin">1600</span>
										元宝
									</span>
								</div>
								<div class="m-buy-content2">
									<label for="">购买数量:</label>

									<#include "./inputnum.ftl">
							<#-- 		<span>
										-
										<input type="text">
										+
									</span> -->
								<#-- 	（库存充足） -->
								</div>
								<div class="f-clearfix"></div>
								<div class="m-buy-content3">
									<button class="m-buy-btn">立即购买</button>

									<div class="m-buy-cue mr20">
										<i class="f-iconfont m-buy-tip">&#xe60e;</i>
										购买提示
									</div>
									<div class="m-buy-follow mr20">
										<span></span>
										关注
										<label for="">(522)</label>
									</div>
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
						</div>
						
						<div class="m-tips m-tips-send">
							<span class="m-tips-img"></span>
							<div class="m-tips-content">
								<h4>闪电发货</h4>
								<p>付款即发货</p>
							</div>
						</div>
						
						<div class="m-tips m-tips-pickup">
							<span class="m-tips-img"></span>
							<div class="m-tips-content">
								<h4>角色取货</h4>
								<p>登陆游戏直接取货</p>
							</div>
						</div>
					</div>

					<div class="f-clearfix"></div>
					
					<div class="m-items-message">
						<div class="m-message-title">
							<h2 class="m-title-intro m-title-choose">商品介绍</h2>
							<h2 class="m-title-explain">购买说明</h2>
						</div>

						<div class="m-message-content">
							<#-- 商品介绍 -->
							<div class="m-intro">
								使用后可以选择打磨出6级的任意一颗星将铭石，必定成功。 每周特惠期间在道具坊购买，可享85折优惠（节省250元宝）每天限量50个，11：00更新。使用后可以选择打磨出6级的任意一颗星将铭石，必定成功。 每周特惠期间在道具坊购买，可享85折优惠（节省250元宝）每天限量50个，11：00更新。
							</div>
							<#-- /商品介绍 -->

							<#-- 购买说明 -->
							<div class="m-explain">
								<div class="m-explain-list"></div>
								<div class="m-explain-content m-explain-buy">
									<h3>我是买家</h3>
									<p>简单购买 步步为营</p>
									<a href="###">挑选商品</a>
									<i class="f-iconfont">&#xe609;</i>
									<a href="###" class="m-explain-pay">快捷支付</a>
									<i class="f-iconfont">&#xe609;</i>
									<a href="###">游戏取货</a>
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
								</div>
							</div>
							<#-- /购买说明 -->

							<div class="m-message-help">
								<div>*</div>
								<span>
									<a href="###">帮助中心</a>
									<a href="###">建议反馈</a>
								</span>
								
							</div>
						</div>
					</div>
				</div>

				<div class="g-sidebar m-sidebar">

					<#-- 侧边栏广告位 -->
					<div class="g-siderbar m-ad">
						<img src="${assets}/img/itemsDetail/ad_tl.jpg" alt="">
					</div>
					<#-- /侧边栏广告位 -->

					<#-- 同类商品推荐 -->
					<div class="m-items-recommend">
						<div class="u-widget-title m-recommend-title">
							<div class="u-corner-lt"></div>
							<div class="u-corner-rb"></div>
							<h2>同类商品推荐</h2>
						</div>
						<div class="m-recommend-list">
							<ul>
								<li>
									<img src="./assets/img/itemsDetail/recommend_items.jpg" alt="">
									<div class="m-recommend-content">
										<span>[明教 男 119级] ご麦斯威尔ご</span>
										<span class="m-recommend-price">
											售价：<label class="m-rprice-sale">360点</label>
											原价：<label class="m-rprice-fixed">400点</label>
										</span>
									</div>	
								</li>
							</ul>
						</div>
					</div>
					<#-- /同类商品推荐 -->

					<#-- 最近浏览 -->
					<div class="m-items-recently">
						<div class="u-widget-title m-recently-title">
							<div class="u-corner-lt"></div>
							<div class="u-corner-rb"></div>
							<h2>最近浏览</h2>
						</div>
						<div class="m-recently-list">
							<ul>
								<li>
									<img src="./assets/img/itemsDetail/recommend_items.jpg" alt="">
									<div class="m-recently-content">
										<span>[明教 男 119级] ご麦斯威尔ご</span>
										<span class="m-recently-price">
											售价：<label class="m-lprice-sale">360点</label>
											原价：<label class="m-lprice-fixed">400点</label>
										</span>
									</div>	
								</li>
							</ul>
						</div>
					</div>
					<#-- /最近浏览 -->

				</div>
			</div>
		</div>
	</div>
	
	<script id="seajsnode" src="${assets}/js/vendor/seajs/seajs/2.2.1/sea.js"></script>
	<script src="${assets}/js/vendor/seajs/seajs-combo/1.0.1/seajs-combo.js"></script>
	<script type="text/javascript" src="../assets/js/config.js?=1"></script>
	<script src="http://localhost:35729/livereload.js"></script>

</body>
</html>