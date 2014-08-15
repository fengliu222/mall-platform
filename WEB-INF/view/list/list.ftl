<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>List</title>
	<meta name="keywords" content=""/>
	<meta name="description" content=""/>
	<meta name="viewport" content="width=device-width"/>
	<link rel="stylesheet" type="text/css" href="${assets}/css/site.css">
	<link rel="stylesheet" type="text/css" href="${assets}/css/modules/list.css">
	<!--[if lt IE 9]>
		<script src="${assets}/js/vendor/html5.js"></script>
	<![endif]-->
</head>
<body>
	<section class="g-doc">

		<#-- 引入头部 -->
		<#include "../header.ftl">

		<div class="g-body m-main">
			<div class="g-center g-inner-wrap">
				<div class="g-main">
					<div class="m-choice">
						<nav>
							首页
							<i class="f-iconfont">&#xe609;</i>
							<a href="#" id="games" class="ui-select-trigger">选择游戏</a>
							<i class="f-iconfont">&#xe609;</i>
							<a href="javascript:void(0);" class="ui-select-trigger js-server-btn">
								<span class="select-text">全部公测区服</span>
							</a>
							<i class="f-iconfont">&#xe609;</i>
							<a href="#" class="ui-select-trigger">选择区服</a>
							<i class="f-iconfont">&#xe609;</i>
							<a href="#" class="ui-select-trigger">选择区服</a>
						</nav>
						<#list filter as fItem>
						<p class="select-wrap">
							<label class="title">${fItem.type}：</label>
							<div class="content">
							<#list fItem.sub as sItem>
								<a href="javascript:void(0)">${sItem.name}</a>
							</#list>
							</div>
						</p>
						</#list>
					</div>
					<div class="u-btn-more js-btn-more">更多选项（装备评分，修炼评分，心法评分…）<i class="f-iconfont">&#xe602;</i></div>
					<!-- 筛选项 -->

					<div class="m-sort">
						<a href="javascript:void(0)" class="active" data-type="price">价格<i class="f-iconfont">&#xe607;</i></a>
						<a href="javascript:void(0)" data-type="time">剩余时间<i class="f-iconfont">&#xe607;</i></a>
						<a href="javascript:void(0)" data-type="level">等级<i class="f-iconfont">&#xe607;</i></a>
						<a href="javascript:void(0)" data-type="sales">销量<i class="f-iconfont">&#xe607;</i></a>

						<span class="text">共<span class="js-num">3333</span>件商品</span>
					</div>

					<div class="m-list">
						<ul>
							<li class="item">
								<a class="item-img" href="###">
									<img src="../assets/img/tmp/role1.png" />
								</a>
								<div class="item-info">
									<h2>[武师 男 5转139级] 畅易格格</h2>
									<p class="info">心法评分：99999     修炼评分：10000     阶修炼评分：99999 </p>
									<p class="info">游戏区服：电信一区-龙门石窟/龙城飞将     出售剩余时间：3天23小时65分</p>
								</div>
								<div class="item-opr">
									<span class="price"><i class="f-iconfont">&#xe604;</i>36</span>
									<a class="n-btn-buy" href="javascript:void(0)">购 买</a>
								</div>
								<div class="sperate-line"></div>
							</li>

							<li class="item">
								<a class="item-img" href="###">
									<img src="../assets/img/tmp/role1.png" />
								</a>
								<div class="item-info">
									<h2>元宝票 面值 11000</h2>
									<p class="info">1元-110.00元宝票  0.0091元/元宝票</p>
									<p class="info">游戏区服：电信一区-龙门石窟/龙城飞将     出售剩余时间：3天23小时65分</p>
								</div>
								<div class="item-opr">
									<span class="price"><i class="f-iconfont">&#xe604;</i>36000</span>
									<a class="n-btn-buy" href="javascript:void(0)">购 买</a>
								</div>
								<div class="sperate-line"></div>
							</li>

							<li class="item">
								<a class="item-img" href="###">
									<img src="../assets/img/tmp/role1.png" />
								</a>
								<div class="item-info">
									<h2>高级星石淬炼石</h2>
									<p class="info">使用等级：--</p>
									<p class="info">游戏区服：电信一区-龙门石窟/龙城飞将     出售剩余时间：3天23小时65分</p>
								</div>
								<div class="item-opr">
									<span class="price"><i class="f-iconfont">&#xe604;</i>12330006</span>
									<a class="n-btn-buy n-btn-disable" href="javascript:void(0)">购 买</a>
								</div>
								<div class="sperate-line"></div>
							</li>
						</ul>
					</div>

					<div class="ui-pagination">
						<a title="上一页" href="javascript:void(0)" class="pre lock"><span class="span">上一页</span></a>
						<a href="javascript:void(0)" class="num active"><span data-curr-num="1" class="span curr">1</span></a>
						<a href="javascript:void(0)" class="num"><span class="span">2</span></a>
						<a href="javascript:void(0)" class="num"><span class="span">3</span></a>
						<a href="javascript:void(0)" class="num"><span class="span">4</span></a>
						<a href="javascript:void(0)" class="num"><span class="span">5</span></a>
						<a href="javascript:void(0)" class="num"><span class="span">6</span></a>
						<a href="javascript:void(0)" class="num"><span class="span">7</span></a>
						<a href="javascript:void(0)" class="num"><span class="span">8</span></a>
						<a href="javascript:void(0)" class="num"><span class="span">9</span></a>
						<span class="pointer">...</span>
						<a href="javascript:void(0)" class="num"><span class="span">12</span></a>
						<a title="下一页" href="javascript:void(0)" class="after">
						<span class="span">下一页</span>
						</a>
					</div>
				</div>
				<!-- 主栏 -->

				<section class="g-sidebar">
					<aside class="m-rank-col-3">
						<header class="u-widget-title">
							<div class="u-corner-lt"></div>
				 			<div class="u-corner-rb"></div>
							<h2>官方特卖</h2>
						</header>
						<ul class="u-rank-list">
							<li class="u-rank-item">
								<img class="u-rank-img" src="../assets/img/tmp/good1.png" title="绑定情况：无绑定"/>
								<div class="u-rank-info">
									<h3>婚礼邀请券</h3>
									<p class="info">售价：<span class="font-red">360点</span><span class="mr20">原价：400点</p>
								</div>
							</li>
						</ul>
					</aside>

					<aside class="m-rank-col-3">
						<header class="u-widget-title">
							<div class="u-corner-lt"></div>
				 			<div class="u-corner-rb"></div>
							<h2>角色热卖</h2>
						</header>
						<div class="m-rank-title">
							<span class="m-rank-span m-rank-username">角色</span>
							<span class="m-rank-span m-rank-money">标价</span>
							<span class="m-rank-span m-rank-fans">浏览次数</span>
						</div>
						<table class="u-ranktable">
							<tr>
								<td><i class="u-ranktips">1</i></td>
								<td><div class="m-rank-span m-rank-username">最美柔情、似水年华</div></td>
								<td><div class="m-rank-span m-rank-money font-red">938000000</div></td>
								<td><div class="m-rank-span m-rank-fans">65412335</div></td>
							</tr>
						</table>
					</aside>

					<aside class="m-rank-col-3">
						<header class="u-widget-title">
							<div class="u-corner-lt"></div>
				 			<div class="u-corner-rb"></div>
							<h2>新鲜出炉</h2>
						</header>
						<div class="m-rank-title">
							<span class="m-rank-span m-rank-username">角色</span>
							<span class="m-rank-span m-rank-sects">门派</span>
							<span class="m-rank-span m-rank-fans">浏览次数</span>
						</div>
						<table class="u-ranktable">
							<tr>
								<td><i class="u-ranktips">1</i></td>
								<td><div class="m-rank-span m-rank-username">最美柔情、似水年华</div></td>
								<td><div class="m-rank-span m-rank-sects">魔剑士</div></td>
								<td><div class="m-rank-span m-rank-fans">65412335</div></td>
							</tr>
						</table>
					</aside>

					<aside class="m-rank-advance">
						<img src="../assets/img/tmp/ad1.png" />
					</aside>
				</section>
				<!-- 侧边栏 -->
			</div>
		</div>

	</section>



<div id="server-box" class="m-server-wrap server-list">
	<i class="f-iconfont icon-up">&#xe60a;</i>
	<a class="f-iconfont server-list-close" href="javascript:void(0);" title="关闭">&#xe60f;</a>
	<div class="hd">
		<p class="fn-right search-info" id="select-step">
			<span class="active">1.选择大区</span>
			<i class="f-iconfont">&#xe609;</i>
			<span>2.选择服务器</span>
			<i class="f-iconfont">&#xe609;</i>
			<span>3.筛选完成</span>
		</p>
		<div class="select-search">
			<a id="searchServer" class="ui-btn-search fn-right">搜索</a>
			<input class="select-search-input fn-right" placeholder="全区快搜" type="text">
			<ul class="select-search-tip"></ul>
		</div>
		<span id="select-guide" class="select-search-area">请选择游戏区：</span>
		<span id="allServerSearch" style="display: none;" class="search-item">
		<span class="item-text">全区快搜</span>
			<a href="javascript:;" class="ui-btn-close f-iconfont">&#xe60f;</a>
		</span>
		<a href="javascript:;" class="all-below"></a>
	</div>
	<div id="server-area-list" class="bd">
		加载区服列表中！~
	</div>
</div>


	<script id="seajsnode" src="${assets}/js/vendor/seajs/seajs/2.2.1/sea.js"></script>
	<script src="${assets}/js/vendor/seajs/seajs-combo/1.0.1/seajs-combo.js"></script>
	<script type="text/javascript" src="../assets/js/config.js"></script>
	<script src="http://localhost:35729/livereload.js"></script>
	<script>
		var SERVER_INFO = <#if server?exists && server?string?length!=0>${server}<#else>[]</#if>;
	</script>
	<script>
		seajs.use("${assets}/js/page/list.js")
	</script>
</body>
</html>