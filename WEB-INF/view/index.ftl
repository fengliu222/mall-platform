<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Index</title>
	<meta name="keywords" content=""/>
	<meta name="description" content=""/>
	<meta name="viewport" content="width=device-width"/>
	<link rel="stylesheet" type="text/css" href="${assets}/css/site.css">
	<link rel="stylesheet" type="text/css" href="${assets}/css/modules/index.css">
	<!--[if lt IE 9]>
		<script src="${assets}/js/vendor/html5.js"></script>
	<![endif]-->
</head>
<body> 
	<section class="g-doc">
		
		<#-- 引入头部 --> 
		<#include "./header.ftl">
		<#-- /引入头部 -->

		<!-- BANNER --> 
		<section class="g-body m-banner"  id="m-banner">
			<section class="g-center"> 
				<!-- 图片轮播 -->
				<article class="m-slide">
					<!-- 轮播缩略图 -->
					<div id="index-slide">
						<ul data-switchable-role="nav" class="m-slide-carouselThumb">
							<li><img src="${assets}/img/index/slideThumb1.jpg" alt="" width="180" height="100" data-adaptive-background="1"></li>
							<li><img src="${assets}/img/index/slideThumb2.jpg" alt="" width="180" height="100" data-adaptive-background="2"></li>
							<li><img src="${assets}/img/index/slideThumb3.jpg" alt="" width="180" height="100" data-adaptive-background="3"></li>
						</ul> 
						<!-- /轮播缩略图 -->
						<!-- 轮播大图 -->
						<ul data-switchable-role="content" class="m-slide-carouselContent">
							<li><a href="###"><img src="${assets}/img/index/slideBig.jpg" alt="" width="720" height="300"></a></li>
							<li><img src="${assets}/img/index/slideBig1.jpg" alt="" width="720" height="300"></li>
							<li><img src="${assets}/img/index/slideBig2.jpg" alt="" width="720" height="300"></li>
						</ul>
						<div class="m-slide-border"></div>
					</div>
					<div class="m-slide-notice"  id="index-slideNotice">
						<div><i class="f-iconfont">&#xe603;</i>
						最新成交</div>
						<ul data-switchable-role="content" >
						 	<li>2014-07-23 15:34 【术士 女 5转149级】 初凉 15000</li>
						 	<li>2014-07-21 15:34 【术士1 女 5转149级】 初凉 15000</li>
						 	<li>2014-07-21 15:34 【术士2 女 5转149级】 初凉 15000</li>
						 </ul> 
					</div>
					
					<!-- /轮播大图 -->

				</article>
				<!-- /图片轮播 -->

				<!-- 快速充值 -->
				<aside class="m-fast" id="index-fast">
					<div class="m-fast-tabs u-tabs">
						<div class="u-corner-lt"></div>
						<a href="###" class="u-tabs-active">直充游戏</a>
						<a href="###" >最新公告</a>
						<div class="u-corner-rb"></div>
					</div>
					<div class="m-fast-content">
						<!-- 直充游戏 -->
						<div class="m-fast-recharge f-dn">
							<form action="###" name="fastRecharge">
								<div class="m-fast-error" data-role="error"></div>
								<div class="m-fast-group">
									<label for="gameid">游戏名称：</label>
									<div class="m-fast-gameselect" id="gameRecharge">

										<span data-role="trigger-content" class="m-fast-gamename">天龙八部</span>
										<i class="f-iconfont">&#xe601;</i>
									</div>
								</div>
								<div class="m-fast-group">
									<label for="rachargeCount">充值金额：</label>
									<input type="text" require name="money" data-role="money" class="m-fast-money">
								</div>
								<div class="m-fast-group">
									<label for="code">验证码：</label>
									<input type="text" class="m-fast-code" name="code" placeholder="验证码" maxlength="5" data-role="code">
									<img src="http://auth.changyou.com/servlet/ImageCode" class="m-fast-codedisplay" alt="验证码" height="28" width="55">
									<a href="###" class="m-fast-changecode">看不清？</a>
								</div>
								<div class="m-fast-group">
									<label for="gameMoney">游戏点数：</label>
									<span class="m-fast-gameMoney" data-role="gamemoney">0游戏点</span>
									<span class="m-fast-moneyComment">1元=20游戏点</span>
								</div>
								<div class="m-fast-group">
									<button class="m-fast-purchase">充值</button>
								</div>
							</form>
						</div>
						<!-- /直冲游戏 -->

						<!-- 官方公告 -->
						<div class="m-fast-notice f-dn">
							<ul>
								<li><a href="###"><span class="m-fast-noticetitle">畅易阁网络维护公告</span><span class="m-fast-noticedate">06-13</span></a></li><li><a href="###"><span class="m-fast-noticetitle">畅易阁网络维护公告</span><span class="m-fast-noticedate">06-13</span></a></li><li><a href="###"><span class="m-fast-noticetitle">畅易阁网络维护公告</span><span class="m-fast-noticedate">06-13</span></a></li><li><a href="###"><span class="m-fast-noticetitle">畅易阁网络维护公告</span><span class="m-fast-noticedate">06-13</span></a></li><li><a href="###"><span class="m-fast-noticetitle">畅易阁网络维护公告</span><span class="m-fast-noticedate">06-13</span></a></li><li><a href="###"><span class="m-fast-noticetitle">畅易阁网络维护公告</span><span class="m-fast-noticedate">06-13</span></a></li>
							</ul>
							<a href="###" class="m-fast-more">更多 >></a>
						</div> 
						<!-- 官方公告 -->
					</div>
				</aside>
				<!-- /快速充值 -->
				<div class="f-clearfix"></div>
			</section>
		</section>
		<!-- / BANNER -->
		<section class="g-body m-main">
			<!-- 游戏交易 -->
			<section class="g-center m-gamesale">
				<header class="m-gamesale-title">
					<div class="tips-busi"></div>
					<h2>游戏交易</h2>
				</header>
				<article class="m-gamesale-content">
					<ul>
						<li><a href="###" class="game-pic-tl"></a></li>
						<li><a href="###" class="game-pic-ld"></a></li>
						<li><a href="###" class="game-pic-dp"></a></li>
						<li><a href="###" class="game-pic-sh"></a></li>
						<li><a href="###" class="game-pic-hx"></a></li>
					</ul>
					<div class="f-clearfix"></div>
				</article>
			</section>
			<!-- /游戏交易 -->

			<section class="g-center">
				<!-- 最新上架 -->
				<section class="m-newgoods">
					<header class="m-newgoods-title">
						<div class="tips-new"></div>
						<h2>最新上架</h2>
						<ul class="m-newgoods-gamelist" data-switchable-role="nav">
							 
						</ul>
					</header>
					<div class="m-newgoods-contentwrap" data-switchable-role="content">
						 
					</div>
					
				</section>
				<!-- /最新上架 -->
				
				<!-- 常见问题 -->
				<aside class="m-faq">
					<header class="m-faq-title u-widget-title">
						<div class="u-corner-lt"></div>
						<div class="u-corner-rb"></div>
						<h2>常见问题</h2>
						<a href="###">更多>></a>
					</header>
					<article class="m-faq-content">
						<div class="m-faq-group">
							<div class="m-faq-q">
								<span>Q:</span>
								<p>畅易阁与其他交易平台有什么不同？</p>
								<div class="f-clearfix"></div>
							</div>
							<div class="m-faq-a">
								<span>A:</span>
								<p>畅易阁是官方虚拟交易平台，交易模式采用与游戏接口直连，全程交易自动化，无须客服人工处理。安全，高效，便捷，让你交易安全又放心。</p>
								<div class="f-clearfix"></div>
							</div>
						</div>
					</article>
				</aside>
				<!-- /常见问题 -->
				<div class="f-clearfix"></div>
			</section>

			<section class="g-center">
				<!-- 活动专区 -->
				<section class="m-activity">
				 	<header class="m-newgoods-title">
						<div class="tips-active"></div>
						<h2>活动专区</h2>
					</header>
					
				 	<article class="m-activity-content">
						<a href="###">
							<img src="${assets}/img/index/active1.jpg" alt="">
						</a>
						<a href="###">
							<img src="${assets}/img/index/active2.jpg" alt="">
						</a>
						<a href="###">
							<img src="${assets}/img/index/active3.jpg" alt="">
						</a>
						<a href="###">
							<img src="${assets}/img/index/active4.jpg" alt="">
						</a>
					</article>
				 </section>
				 <!-- /活动专区 -->

				 <!-- 排行榜 -->
				 <aside class="m-rank">
				 	<header class="m-rank-tabs u-tabs"> 
				 		<div class="u-corner-lt"></div>
				 		<div class="u-corner-rb"></div>
				 		<a href="###" class="m-rank-fans u-tabs-active">人气排行榜</a>
				 		<a href="###" class="m-rank-history">历史排行榜</a>
				 	</header>
				 	<div class="m-rank-title">
				 		<span class="m-rank-gamename">游戏名称</span>
				 		<span class="m-rank-username">商品描述</span>
				 		<span class="m-rank-money">价格</span>
				 		<span class="m-rank-fans">人气指数</span>
				 	</div>
				 	<div class="m-rank-listwrap">
				 		<div class="m-rank-content"></div>
				 		<div class="m-rank-content f-dn"></div>
				 	</div>
				 </aside>
				 <div class="f-clearfix"></div>
				 <!-- /排行榜 -->
			</section>

			<!-- 合作游戏 -->
			<section class="g-center m-friends">
				<div class="m-friends-logo"></div>
				<div class="m-friends-tl m-friends-item">
					<div class="z-tl-grey m-friends-grey">
						<div></div>
						<p>天龙八部</p>
					</div>
					<div class="z-tl-light m-friends-color">
						<div></div>
						<p>天龙八部</p>
					</div>
				</div>
				<div class="m-friends-dj m-friends-item">
					<div class="z-dj-grey m-friends-grey">
						<div></div>
						<p>刀剑英雄</p>
					</div>
					<div class="z-dj-light m-friends-color">
						<div></div>
						<p>刀剑英雄</p>
					</div>
				</div>
				<div class="m-friends-sh m-friends-item">
					<div class="z-sh-grey m-friends-grey">
						<div></div>
						<p>水浒Q传</p>
					</div>
					<div class="z-sh-light m-friends-color">
						<div></div>
						<p>水浒Q传</p>
					</div>
				</div>
				<div class="m-friends-dp m-friends-item">
					<div class="z-dp-grey m-friends-grey">
						<div></div>
						<p>斗破苍穹</p>
					</div>
					<div class="z-dp-light m-friends-color">
						<div></div>
						<p>斗破苍穹</p>
					</div>
				</div>
				<div class="m-friends-ld m-friends-item">
					<div class="z-ld-grey m-friends-grey">
						<div></div>
						<p>鹿鼎记</p>
					</div>
					<div class="z-ld-light m-friends-color">
						<div></div>
						<p>鹿鼎记</p>
					</div>
				</div>
				<div class="m-friends-hx m-friends-item">
					<div class="z-hx-grey m-friends-grey">
						<div></div>
						<p>幻想神域</p>
					</div>
					<div class="z-hx-light m-friends-color">
						<div></div>
						<p>幻想神域</p>
					</div>
				</div>
				<div class="m-friends-qs m-friends-item">
					<div class="z-qs-grey m-friends-grey">
						<div></div>
						<p>秦时明月</p>
					</div>
					<div class="z-qs-light m-friends-color">
						<div></div>
						<p>秦时明月</p>
					</div>
				</div>
				<div class="f-clearfix"></div>
			</section>
			<!-- /合作游戏 -->

			<section class="g-center m-help">
				<article class="m-help-item">
					<div class="m-help-center">
						<div class="m-help-icon z-help-saleflow"></div>
						<div class="m-help-content">
							<h3 class="m-help-title">出售流程</h3>
							<a href="###">购买流程</a>
							<a href="###">钱包充值</a>
							<a href="###">游戏领取</a>
						</div>
					</div>
				</article>
				<article class="m-help-item">
					<div class="m-help-center">
						<div class="m-help-icon z-help-buyflow"></div>
						<div class="m-help-content">
							<h3 class="m-help-title">购买流程</h3>
							<a href="###">出售流程</a>
							<a href="###">游戏寄售</a>
							<a href="###">提取现金</a>
						</div>
					</div>
				</article>
				<article class="m-help-item">
					<div class="m-help-center">
						<div class="m-help-icon z-help-safe"></div>
						<div class="m-help-content">
							<h3 class="m-help-title">安全保障</h3>
							<a href="###">被盗举报</a>
							<a href="###">意见反馈</a>
							<a href="###">帮助中心</a>
						</div>
					</div>
				</article>
				<article class="m-help-item">
					<div class="m-help-center">
						<div class="m-help-icon z-help-faq"></div>
						<div class="m-help-content">
							<h3 class="m-help-title">常见问题</h3>
							<a href="###">时间规则</a>
							<a href="###">收费规则</a>
							<a href="###">热点问题</a>
						</div>
					</div>
				</article>
				<div class="f-clearfix"></div>
			</section>
		</section>
	</section>

	<script id="seajsnode" src="${assets}/js/vendor/seajs/seajs/2.2.1/sea.js"></script>
	<script src="${assets}/js/vendor/seajs/seajs-combo/1.0.1/seajs-combo.js"></script>
	<script type="text/javascript" src="../assets/js/config.js?=1"></script>
	<script src="http://localhost:35729/livereload.js"></script>
	<script>
		seajs.use("${assets}/js/page/index/index.js")
	</script>
</body>
</html>