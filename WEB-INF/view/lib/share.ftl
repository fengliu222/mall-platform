<#-- CNZZ统计 -->
<#macro statistics>
	<#-- <div class="fn-hide"><script src="http://s5.cnzz.com/stat.php?id=5837650&web_id=5837650" language="JavaScript"></script></div> -->
</#macro>

<#macro share_index>
	<!-- Baidu Button BEGIN
	<script type="text/javascript" id="bdshare_js" data="type=slide&amp;img=4&amp;pos=right&amp;uid=6780026" ></script>
	<script type="text/javascript" id="bdshell_js"></script>
	<script type="text/javascript">
	var bds_config={
		"bdTop":162,
		bdPopTitle:"哇塞，天龙角色也能交易啦！畅易阁—天龙八部唯一官方交易平台，角色交易全新来袭！",
		bdText:"哇塞，天龙角色也能交易啦！畅易阁—天龙八部唯一官方交易平台，角色交易全新来袭！",
		bdPic:"${publicPath}/tl/themes/img/bg/share-logo.jpg",
		bdComment:"“畅易阁”是专为畅游玩家提供虚拟物品交易服务的平台。通过畅易阁您可以轻松方便的购买或寄售您的游戏角色。（详情请点击网站，或至游戏内洛阳钱庄-NPC常易格处查看）",
		bdDesc:"天龙八部角色交易站上线啦，还不快来瞧瞧",
		searchPic:"1"
	};
	document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + Math.ceil(new Date()/3600000);
	</script>
	Baidu Button END-->
</#macro>
<#macro share_intro>
	<!-- Baidu Button BEGIN
	<script type="text/javascript" id="bdshare_js" data="type=slide&amp;img=4&amp;pos=right&amp;uid=6780026" ></script>
	<script type="text/javascript" id="bdshell_js"></script>
	<script type="text/javascript">
	var bds_config={
		"bdTop":162,
		bdPopTitle:"畅易阁—天龙八部唯一官方交易平台，角色交易全新来袭。",
		bdText:"畅易阁—天龙八部唯一官方交易平台，角色交易全新来袭。",
		bdPic:"${publicPath}/tl/themes/img/bg/intro-share.jpg",
		bdComment:"游戏数据直接连通，安全交易官方保障。什么是角色交易？卖家寄卖角色有什么要求么？买家怎么操作？知你所想，尽在[畅易阁大剧透]！",
		weiboText:"游戏数据直接连通，安全交易官方保障。什么是角色交易？卖家寄卖角色有什么要求么？买家怎么操作？知你所想，尽在[畅易阁大剧透]！",
		bdDesc:"",
		searchPic:"1"
	};
	document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + Math.ceil(new Date()/3600000);
	</script>
	Baidu Button END-->
</#macro>
<#macro share_charDetail price charObj>
	<!-- Baidu Button BEGIN
	<div class="fn-clearfix" style="margin-left: 7px;margin-top:10px;">
		<div id="bdshare" class="bdshare_t bds_tools get-codes-bdshare">
		<span class="bds_more">分享到：</span>
		<a class="bds_tsina"></a>
		<a class="bds_qzone"></a>
		<a class="bds_tqq"></a>
		<a class="bds_tieba"></a>
		<a class="bds_sqq"></a>
		</div>
	</div>
	<script type="text/javascript" id="bdshare_js" data="type=tools&amp;uid=6780026" ></script>
	<script type="text/javascript" id="bdshell_js"></script>
	<script type="text/javascript">
	var bds_config={
		bdPopTitle:"我在天龙畅易阁发现了一个很棒的角色！",
		bdText:"我在天龙畅易阁发现了一个很棒的角色！",
		bdPic:"${publicPath}/tl/themes/img/cartoon/role-<#if charObj.sex?exists && charObj.sex?int == 1>male<#else>female</#if>-${charObj.menpai!0}.jpg",
		weiboText:"角色信息：[售价￥${price!"0"}元] [${tlProfession["${charObj.menpai!0}"]}<#if charObj.sex?exists && charObj.sex?int == 1>男<#else>女</#if> ${charObj.level!1}级][血上限：${charObj.maxHp!"0"} | 气上限：${charObj.maxMp!"0"} | 心法评分：${charObj.xinFaScore!"0"}| 修炼评分：${charObj.xiuLianScore!"0"} | 进阶修炼评分：${charObj.upgradeScore!"0"} | 装备评分：${charObj.equipScore!"0"}] ",
		bdComment:"角色信息：[售价￥${price!"0"}元] [${tlProfession["${charObj.menpai!0}"]}<#if charObj.sex?exists && charObj.sex?int == 1>男<#else>女</#if> ${charObj.level!1}级][血上限：${charObj.maxHp!"0"} | 气上限：${charObj.maxMp!"0"} | 心法评分：${charObj.xinFaScore!"0"}| 修炼评分：${charObj.xiuLianScore!"0"} | 进阶修炼评分：${charObj.upgradeScore!"0"} | 装备评分：${charObj.equipScore!"0"}] ",
		bdDesc:"这角色不错!角色信息：[售价￥${price!"0"}元] [${tlProfession["${charObj.menpai!0}"]}<#if charObj.sex?exists && charObj.sex?int == 1>男<#else>女</#if> ${charObj.level!1}级][血上限：${charObj.maxHp!"0"} | 气上限：${charObj.maxMp!"0"} | 心法评分：${charObj.xinFaScore!"0"}| 修炼评分：${charObj.xiuLianScore!"0"} | 进阶修炼评分：${charObj.upgradeScore!"0"} | 装备评分：${charObj.equipScore!"0"}]",
		searchPic:"1"
	};
	document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + Math.ceil(new Date()/3600000)
	</script>
	Baidu Button END -->
</#macro>
<#macro share_paySuccess price charObj>
	<!-- Baidu Button BEGIN
	<div class="fn-clearfix" style="margin-left: 10px;">
		<div id="bdshare" class="bdshare_t bds_tools get-codes-bdshare">
		<span class="bds_more">分享到：</span>
		<a class="bds_tsina"></a>
		<a class="bds_qzone"></a>
		<a class="bds_tqq"></a>
		<a class="bds_tieba"></a>
		<a class="bds_sqq"></a>
		</div>
	</div>
	<script type="text/javascript" id="bdshare_js" data="type=tools&amp;uid=6780026" ></script>
	<script type="text/javascript" id="bdshell_js"></script>
	<script type="text/javascript">
	var bds_config={
		bdPopTitle:"我刚刚在天龙畅易阁购买了一个[售价￥${price!"0"}元]的极品角色！",
		bdText:"我刚刚在天龙畅易阁购买了一个[售价￥${price!"0"}元]的极品角色！",
		bdPic:"${publicPath}/tl/themes/img/cartoon/role-<#if charObj.sex?exists && charObj.sex?int == 1>male<#else>female</#if>-${charObj.menpai!0}.jpg",
		weiboText:"角色信息：[${tlProfession["${charObj.menpai!0}"]}<#if charObj.sex?exists && charObj.sex?int == 1>男<#else>女</#if> ${charObj.level!1}级][血上限：${charObj.maxHp!"0"} | 气上限：${charObj.maxMp!"0"} | 心法评分：${charObj.xinFaScore!"0"}| 修炼评分：${charObj.xiuLianScore!"0"} | 进阶修炼评分：${charObj.upgradeScore!"0"} | 装备评分：${charObj.equipScore!"0"}] ",
		bdComment:"角色信息：[${tlProfession["${charObj.menpai!0}"]}<#if charObj.sex?exists && charObj.sex?int == 1>男<#else>女</#if> ${charObj.level!1}级][血上限：${charObj.maxHp!"0"} | 气上限：${charObj.maxMp!"0"} | 心法评分：${charObj.xinFaScore!"0"}| 修炼评分：${charObj.xiuLianScore!"0"} | 进阶修炼评分：${charObj.upgradeScore!"0"} | 装备评分：${charObj.equipScore!"0"}] ",
		bdDesc:"这角色不错!角色信息：[售价￥${price!"0"}元] [${tlProfession["${charObj.menpai!0}"]}<#if charObj.sex?exists && charObj.sex?int == 1>男<#else>女</#if> ${charObj.level!1}级][血上限：${charObj.maxHp!"0"} | 气上限：${charObj.maxMp!"0"} | 心法评分：${charObj.xinFaScore!"0"}| 修炼评分：${charObj.xiuLianScore!"0"} | 进阶修炼评分：${charObj.upgradeScore!"0"} | 装备评分：${charObj.equipScore!"0"}]",
		searchPic:"1"
	};
	document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + Math.ceil(new Date()/3600000)
	</script>
	Baidu Button END -->
</#macro>