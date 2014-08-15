<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>个人中心</title>
	<meta name="keywords" content=""/>
	<meta name="description" content=""/>
	<meta name="viewport" content="width=device-width"/>
	<link rel="stylesheet" type="text/css" href="${assets}/css/site.css">
	<link rel="stylesheet" type="text/css" href="${assets}/css/modules/mycenter.css">
	<!--[if lt IE 9]>
		<script src="${assets}/js/vendor/html5.js"></script>
	<![endif]-->
</head>
<body> 
	<section class="g-doc">
		
		<!-- 引入头部 --> 
		<#include "../header.ftl">
		<!-- /引入头部 -->

		<section class="g-body m-main">
			<!-- 网站导航 -->
			<section class="g-center m-subnav">
				<ul class="m-crumb">
					<li>你的位置：</li>
					<li><a href="">首页</a></li>
					<li><span class="m-arrow">&gt;</span><span class="f-current">我的畅易阁</span></li>
				</ul>
			</section>
			<!-- /网站导航 -->

			<div class="g-center m-body">
				<div class="g-side">
					<div class="m-main-title">
						<h1>我的畅易阁</h1>
					</div>
					
					<div class="m-mc-menu">
						<dl>
							<dt>
								<h2>
									<span class="m-mc-menu-icon m-mc-ico-bussiness"></span>我的交易
								</h2>
							</dt>
							<dd><a class="m-menu-item f-active" href="">我购买的商品</a></dd>
							<dd><a class="m-menu-item" href="">我出售的商品</a></dd>
							<dd><a class="m-menu-item" href="">消息</a></dd>
							<dd><a class="m-menu-item" href="">我关注的商品</a></dd>
						</dl>

						<dl>
							<dt>
								<h2>
									<span class="m-mc-menu-icon m-mc-ico-money"></span>资金管理
								</h2>
							</dt>
							<dd><a class="m-menu-item" href="">充值</a></dd>
							<dd><a class="m-menu-item" href="">提现</a></dd>
							<dd><a class="m-menu-item" href="">充值明细查询</a></dd>
							<dd><a class="m-menu-item" href="">提现明细查询</a></dd>
							<dd><a class="m-menu-item" href="">银行卡管理</a></dd>
							<dd><a class="m-menu-item" href="">钱包密码设置</a></dd>
						</dl>

						<dl>
							<dt>
								<h2>
									<span class="m-mc-menu-icon m-mc-ico-account"></span>账户中心
								</h2>
							</dt>
							<dd><a class="m-menu-item" href="">安全设置</a></dd>
						</dl>
					</div>
				</div>

				<div class="g-main">
					<div class="m-info-center">
						<ul class="m-actionc">
							<li class="m-action-item">
								<p class="m-info-value"><strong class="m-accout-money"><i class="f-iconfont">&#xe604;</i>720000</strong></p>
								<p class="m-info-name">钱包余额</p>
							</li>
							<li class="m-action-item">
								<p class="m-info-value"><strong class="m-freeze-money"><i class="f-iconfont">&#xe604;</i>36000</strong></p>
								<p class="m-info-name">钱包余额</p>
							</li>
							<li class="m-action-item">
								<p class="m-info-value"><a href="">查看<i class="f-iconfont">&#xe602;</i></a></p>
								<p class="m-info-name">畅游点</p>
							</li>
							<li class="m-action-item">
								<p class="m-info-value"><a href="#">我要充值</a></p>
								<p class="m-info-name"><a href="#">我要提现</a></p>
							</li>
						</ul>
						<div class="m-user-info">
							<p class="m-info-value">
								<span>早上好！18612534667</span>
							</p>
							<p class="m-info-name f-normal-font">
								账户安全：<span class="m-process"><i></i></span>低
								<a href="javascript:;" id="J_AccountInfo">查看<i class="f-iconfont">&#xe602;</i></a>
							</p>
						</div>
					</div>

					<!-- 资金用户信息 -->
					<div class="m-accountc f-hide">
						<span class="m-account-arr">◆</span>
						<div class="m-account-info-item">
							<span class="m-account-ico m-ico-zfmm"></span>
							<p>支付密码</p>
							<a href="">未设置</a>
						</div>
						<div class="m-account-info-item f-left-line">
							<span class="m-account-ico m-ico-smrz"></span>
							<p>实名认证</p>
							<a href="">未设置</a>
						</div>
						<div class="m-account-info-item f-left-line">
							<span class="m-account-ico m-ico-aqsj"></span>
							<p>安全手机</p>
							<a href="">未设置</a>
						</div>
						<div class="m-account-info-item f-left-line">
							<span class="m-account-ico m-ico-aqyx"></span>
							<p>安全邮箱</p>
							<a href="">未设置</a>
						</div>
						<div class="m-account-info-item f-left-line">
							<span class="m-account-ico m-ico-mbwt"></span>
							<p>密保问题</p>
							<a href="">未设置</a>
						</div>
					</div>
					<!-- /资金用户信息 -->

					<div class="m-model-box">
						<div class="m-model-title">
							<a href="" class="m-more-link">查看全部订单<span class="f-font-st">&gt;&gt;</span></a>
							<a href="" class="m-model-link">我购买的商品<span class="f-iconfont">&#xe605;</span></a>
							<a href="" class="m-model-link">我购买的商品<span class="f-iconfont">&#xe605;</span></a>
							<a href="" class="m-model-link">等待付款（3）<span class="f-iconfont">&#xe605;</span></a>
						</div>
						<div class="m-model-content">
						</div>
					</div>

					<div class="m-model-box">
						<div class="m-model-title">
							<h3 class="m-title">我关注的商品</h3>
						</div>
						<div class="m-model-content">
							<div class="m-favi-good-slide-box">
								<a href="javascript:;" class="f-iconfont m-prev">&#xe60c;</a>
								<div class="m-favi-good-box">
									<div class="m-newgoods-item">
										<div class="m-newgoods-img">
											<a href="###"><img src="${assets}/img/index/goods1.jpg" alt=""></a>
										</div>
										<div class="m-newgoods-info">
											<a href="###"><h3 class="m-newgoods-name">高级星石淬炼丹药</h3></a>
											<div class="m-newgoods-money">
												<p>原价：1100元宝</p>
												<p>售价：200点</p>
											</div>
										</div>
										<div class="f-clearfix"></div>
									</div>
									<div class="m-newgoods-item">
										<div class="m-newgoods-img">
											<a href="###"><img src="${assets}/img/index/goods1.jpg" alt=""></a>
										</div>
										<div class="m-newgoods-info">
											<a href="###"><h3 class="m-newgoods-name">高级星石淬炼丹药</h3></a>
											<div class="m-newgoods-money">
												<p>原价：1100元宝</p>
												<p>售价：200点</p>
											</div>
										</div>
										<div class="f-clearfix"></div>
									</div>
									<div class="m-newgoods-item">
										<div class="m-newgoods-img">
											<a href="###"><img src="${assets}/img/index/goods1.jpg" alt=""></a>
										</div>
										<div class="m-newgoods-info">
											<a href="###"><h3 class="m-newgoods-name">高级星石淬炼丹药</h3></a>
											<div class="m-newgoods-money">
												<p>原价：1100元宝</p>
												<p>售价：200点</p>
											</div>
										</div>
										<div class="f-clearfix"></div>
									</div>
									<div class="m-newgoods-item">
										<div class="m-newgoods-img">
											<a href="###"><img src="${assets}/img/index/goods1.jpg" alt=""></a>
										</div>
										<div class="m-newgoods-info">
											<a href="###"><h3 class="m-newgoods-name">高级星石淬炼丹药</h3></a>
											<div class="m-newgoods-money">
												<p>原价：1100元宝</p>
												<p>售价：200点</p>
											</div>
										</div>
										<div class="f-clearfix"></div>
									</div>
								</div>
								<a href="javascript:;" class="f-iconfont m-next">&#xe60b;</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</section>

	<script id="seajsnode" src="${assets}/js/vendor/seajs/seajs/2.2.1/sea.js"></script>
	<script src="${assets}/js/vendor/seajs/seajs-combo/1.0.1/seajs-combo.js"></script>
	<script src="http://localhost:35729/livereload.js"></script>
</body>
</html>