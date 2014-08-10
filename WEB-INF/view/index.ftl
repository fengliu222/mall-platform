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
	<link rel="stylesheet" href="http://at.alicdn.com/t/font_1407493685_4673824.css">
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
		<section class="g-body m-banner">
			<section class="g-center"> 
				<!-- 图片轮播 -->
				<article class="m-slide">
					<!-- 轮播缩略图 -->
					<ul class="m-slide-carouselThumb">
						<li><img src="${assets}/img/index/slideThumb1.jpg" alt="" width="180" height="100"></li>
						<li><img src="${assets}/img/index/slideThumb2.jpg" alt="" width="180" height="100"></li>
						<li><img src="${assets}/img/index/slideThumb3.jpg" alt="" width="180" height="100"></li>
					</ul> 
					<!-- /轮播缩略图 -->
					<!-- 轮播大图 -->
					<ul class="m-slide-carouselContent">
						<li><a href="###"><img src="${assets}/img/index/slideBig.jpg" alt="" width="720" height="300"></a></li>
						<#-- <li><img src="${assets}/img/index/slideBig.jpg" alt="" width="720" height="300"></li>
						<li><img src="${assets}/img/index/slideBig.jpg" alt="" width="720" height="300"></li> -->
					</ul>
					<div class="m-slide-notice">
						<i class="f-iconfont">&#xe603;</i>
						最新成交
						<span>
							
						</span> 
					</div>
					<!-- /轮播大图 -->

				</article>
				<!-- /图片轮播 -->

				<!-- 快速充值 -->
				<aside class="m-fast">
					<div class="m-fast-tabs u-tabs">
						<div class="u-corner-lt"></div>
						<a href="###" class="u-tabs-active">直充游戏</a>
						<a href="###" >最新公告</a>
						<div class="u-corner-rb"></div>
					</div>
					<div class="m-fast-content">
						<!-- 直充游戏 -->
						<div class="m-fast-recharge f-dn">
							<form action="#" name="fastRecharge">
								<div class="m-fast-group">
									<label for="username">畅游通行证：</label>
									<input type="text" name="username" placeholder="手机/邮箱/个性账号">
								</div>
								<div class="m-fast-group">
									<label for="gameid">游戏名称：</label>
									<div class="m-fast-gameselect">
										<span class="m-fast-gamename">天龙八部</span>
										<i class="f-iconfont">&#xe601;</i>
									</div>
								</div>
								<div class="m-fast-group">
									<label for="rachargeCount">充值金额：</label>
									<input type="text" require name="money">
								</div>
								<div class="m-fast-group">
									<label for="gameMoney">游戏点数：</label>
									<span class="m-fast-gameMoney">100游戏点</span>
									<span class="m-fast-moneyComment">1元=20游戏点</span>
								</div>
								<div class="m-fast-group">
									<button class="m-fast-purchase">充值</button>
								</div>
							</form>
						</div>
						<!-- /直冲游戏 -->

						<!-- 官方公告 -->
						<div class="m-fast-notice">
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
						<span class="m-newgoods-gamelist">
							<a href="###">天龙八部</a>
							<a href="###">天龙八部</a>
							<a href="###">天龙八部</a>
						</span>
					</header>
					<article class="m-newgoods-content">
						<div class="m-newgoods-item">
							<div class="m-newgoods-img">
								<a href="###"><img src="###" alt=""></a>
							</div>
							<div class="m-newgoods-info">
								<a href="###"><h3 class="m-newgoods-name">高级星石淬炼丹药</h3></a>
								<div class="m-newgoods-money">
									<p>原价：1100元宝</p>
									<p>售价：200点</p>
								</div>
							</div>

						</div>
					</article>
					
				</section>
				<!-- /最新上架 -->
				
				<!-- 常见问题 -->
				<aside class="m-faq">
					<header class="m-faq-title">
						<h2>常见问题</h2>
						<a href="###">更多</a>
					</header>
					<article class="m-faq-content">
						<div class="m-faq-group">
							<div class="m-faq-q">
								<span>Q:</span>
								<p>畅易阁与其他交易平台有什么不同？</p>
							</div>
							<div class="m-faq-a">
								<span>A:</span>
								<p>畅易阁是官方虚拟交易平台，交易模式采用与游戏接口直连，全程交易自动化，无须客服人工处理。安全，高效，便捷，让你交易安全又放心。</p>
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
							<img src="###" alt="">
						</a>
						<a href="###">
							<img src="###" alt="">
						</a>
						<a href="###">
							<img src="###" alt="">
						</a>
						<a href="###">
							<img src="###" alt="">
						</a>
					</article>
				 </section>
				 <!-- /活动专区 -->

				 <!-- 排行榜 -->
				 <aside class="m-rank">
				 	<header class="m-rank-tabs"> 
				 		<a href="###" class="m-rank-fans"></a>
				 		<a href="###" class="m-rank-history"></a>
				 	</header>
				 	<div class="m-rank-title">
				 		<span>游戏名称</span>
				 		<span>商品描述</span>
				 		<span>价格</span>
				 		<span>人气指数</span>
				 	</div>
				 	<table>
				 		<tr>
				 			<td><i class="u-ranktips">1</i></td>
				 			<td><div>天龙八部</div></td>
				 			<td><div>妖王孙悟空</div></td>
				 			<td><div class="m-rank-money">13000</div></td>
				 			<td><div>2341627</div></td>
				 		</tr>
				 	</table>
				 </aside>
				 <!-- /排行榜 -->
			</section>

			<!-- 合作游戏 -->
			<section class="g-center m-friends">
				<div class="m-friends-logo"></div>
				<div class="m-friends-tl">
					<div>
						<img src="###" alt="">
						<p>天龙八部</p>
					</div>
					<div class="m-friends-active">
						<img src="###" alt="">
						<p>天龙八部</p>
					</div>
				</div>
			</section>
			<!-- /合作游戏 -->
		</section>
	</section>

	<script id="seajsnode" src="${assets}/js/vendor/seajs/seajs/2.2.1/sea.js"></script>
	<script src="${assets}/js/vendor/seajs/seajs-combo/1.0.1/seajs-combo.js"></script>
	<script type="text/javascript" src="../assets/js/config.js"></script>
	<script src="http://localhost:35729/livereload.js"></script>
	<script>
		seajs.use("../assets/js/page/index.js")
	</script>
</body>
</html>