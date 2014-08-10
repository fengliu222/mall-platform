<#setting url_escaping_charset='UTF-8'>
<#--
 * This is a collection of common utility macros that will be widely used.
 * Primarily, these pass through to other macro files (ie Spring), or tag libraries
 * By providing an access through a common file, we reduce the amount of includes required
 * in most user's templates, and provide a means to swap out some of the functionality if necessary.
-->

<#--
 * Spring FreeMarker macros - first import the file so we can reference it as part of a namespace
 * secondly, include it, so that all macros defined within it, become visible to anyone importing *this* file
-->
<#import "spring/spring.ftl" as spring />
<#include "spring/spring.ftl" />

<#--
 * Global Variables Definition.
 * BasePath
 * ...
-->
<#assign basePath = basePath />
<#assign publicPath = publicPath />
<#--<#assign staticVersion="v20130924"/>-->

<#--
 * Override macros that we included above, where we need to alter the operation
-->
<#--
 * Spring will throw an Exception if the message is missing, with unsightly rendering the result
 * Using the attempt directive, we can catch these problems and replicate the behaviour of the JSTL tags
-->
<#macro message code><#attempt><@spring.message code /><#recover>${code}</#attempt></#macro>
<#macro messageArgs code, args><#attempt><@spring.messageArgs code, args /><#recover>${code}</#attempt></#macro>

<#-- HTML Macros -->
<#macro htmlTitle title>
    <#-- <title><@message title /></title> -->
    <title>${title!""}</title>
</#macro>
<#macro htmlFavicon icon>
    <link rel="shortcut icon" type="image/x-icon" href="${imagePath}${icon}" />
</#macro>
<#macro htmlBookMark icon>
    <link rel="bookmark" type="image/x-icon" href="${imagePath}${icon}" />
</#macro>

<#-- Other Macros -->
<#macro truncate string, length>
    <#attempt>
        <#if string?length &gt; length>
            <span title="${string}">${string?substring(0, length)} ...</span>
        <#else>
            ${string}
        </#if>
    <#recover>
        ${string}
    </#attempt>
</#macro>

<#-- App Macros -->
<#--${pageSupport.totalPage}总页数 -->
<#--style为单独处理资金分页 -->
<#macro pager pageSupport URL hash="" style="">
	<#if pageSupport?exists && pageSupport.totalPage &gt; 1>
	<div class="ui-pagination">
		<#if pageSupport.currentPage==1||pageSupport.currentPage==0>
		<a title="上一页" href="javascript:void(0)" class="pre lock"><#if style!="pay"><span class="span">上一页</span></#if></a>
		<#else>
		<a title="上一页" href="${URL}${pageSupport.lastPage}${hash}" class="pre"><#if style!="pay"><span class="span">上一页</span></#if></a>
		</#if>
		<#list pageSupport.pages as page>
            <#if pageSupport.currentPage==page>
            <a href="javascript:void(0)" class="num active"><span data-curr-num = "${page}" class="span curr">${page}</span></a>
            <#elseif page==0>
            <#if style!="pay">
	            <span class="pointer">...</span>
			<#else>
				<span class="pointer">&nbsp;&bull;&nbsp;&bull;&nbsp;&bull;&nbsp;</span>
			</#if>
            <#else>
			<a href="${URL}${page}${hash}" class="num"><span class="span">${page}</span></a>
			</#if>
		</#list>
		<#if pageSupport.next==false>
		<a title="下一页" href="javascript:void(0)" class="after lock">
			<#if style!="pay">
			<span class="span">下一页</span>
			</#if>
		</a>
	    <#else>
	    <a title="下一页" href="${URL}${pageSupport.nextPage}${hash}" class="after">
	    	<#if style!="pay">
			<span class="span">下一页</span>
			</#if>
	    </a>
		</#if>
		<#-- <span class="fn-ml10">到第</span>
		<input class="ui-input-mini" maxlength="5" type="text" id="pageInput" >
		<span>页</span>
		<a href="javascript:void(0)" data-url="${URL}" onclick="return false;" id="pageSubmit" class="ui-btn-mini">确定</a>-->
	</div>
	</#if>
</#macro>

<#macro search>
	<div class="ui-page-search">
		<form id="submitSearch" method="post" action="${basePath}/goods/${goodsPeriod}">
		<input id="key_search" autocomplete="off" name="search_key" class="ui-input-search" data-keyword="${searchKey}" type="text" placeholder="输入物品名称进行搜索"/>
		<input type ="text" class="fn-hide" id="searchGoodsPeriod"  name="goods_period" value="${goodsPeriod}" />
		<div class="ui-search-tip fn-hide">
			<ul></ul>
		</div>
		<a id="searchSubmitButton"  href="javascript:void(0)" class="ui-btn-red" onclick="return false;"><span>搜索</span></a>
		</form>
	</div>
</#macro>

<#-- 商品类型 -->
<#assign goodstype = {
	"name":"goodsParentType",
	"sub":[
			{
				"key":"1",
				"name":"角色"
			},
			{
				"key":"2",
				"name":"角色"
			},
			{
				"key":"3",
				"name":"伙伴"
			},
			{
				"key":"4",
				"name":"装备"
			},
			{
				"key":"5",
				"name":"物品"
			}
		]
	}
/>
<#macro show names key>
	<#list names.sub as sub>
		<#if key == "${sub.key}">${sub.name}</#if>
	</#list>
</#macro>

<#macro breadcrumbMoney first=0 second=0 third=0>
	<ul class="ui-breadcrumb-money">
		<li>您的位置：</li>
		<li><a href="${basePath}/goods/selling">畅易阁天龙站</a></li>

		<li>&gt; 资金管理中心</li>
		<#if first=1.0><li>&gt; 支付</li></#if>
		<#if first=1.1><li>&gt; 提现</li></#if>
		<#if first=1.2><li>&gt; 充值</li></#if>
		<#if first=1.3><li>&gt; 提现明细</li></#if>
		<#if first=1.4><li>&gt; 充值明细</li></#if>
		<#if first=1.5><li>&gt; 银行信息设置</li></#if>
		<#if first=1.6><li>&gt; 钱包密码设置</li></#if>


		<#if second=2.0><li>&gt; <a href="#">余额不足</a></li></#if>
		<#if second=2.1><li>&gt; <a href="#">支付页面</a></li></#if>
		<#if second=2.2><li>&gt; <a href="#">支付成功</a></li></#if>
		<#if second=2.3><li>&gt; <a href="#">支付失败</a></li></#if>
		<#if second=2.4><li>&gt; <a href="#">未设置钱包密码</a></li></#if>


		<#if third=3.1><li>&gt; <a href="#">XXXX</a></li></#if>
		<#if third=3.2><li>&gt; <a href="#">XXXX</a></li></#if>
	</ul>
</#macro>


<#macro msgType type>
<#if type==1 || type==2 || type==5>
我是买家
<#elseif type==3 || type==6 || type==7 || type==8>
我是卖家
<#elseif type==4 || type==11 || type==12 || type==13 || type==14 || type==15 || type==16>
资金管理
<#elseif type==9 || type==10 || type==17 || type==18 || type==19>
账号权限
<#else>
其他消息
</#if>
</#macro>

<#macro cutEmail email>
<#assign user_cn = email?if_exists  user_name_length = user_cn?index_of('@')>
	<#if user_name_length == -1>
		<#if user_cn?length gt 4>
			${user_cn?substring(0,2)}${user_cn?substring(2,user_cn?length-2)?replace("\\S","*","r")}${user_cn?substring(user_cn?length-2)}
		<#else>
			${user_cn?trim}
		</#if>
	<#elseif user_name_length gt 8>${user_cn?substring(0,2)}****${user_cn?substring(user_name_length-2)}<#elseif user_name_length gt 4>
		${user_cn?substring(0,2)}${user_cn?substring(2,user_name_length-2)?replace("\\S","*","r")}${user_cn?substring(user_name_length-2)}
	<#else>
		${user_cn}
	</#if>
</#macro>

<#macro cutStringLastFour orignString>
	<#assign str_length = orignString?length>
		<#if (str_length > 4) >
			${orignString?substring(str_length-4,str_length)}
		<#else>
			${orignString?if_exists}
		</#if>
</#macro>

<#macro stringFirstAndLast orignString>
	<#assign str_length = orignString?length>
	<#if str_length gt 2>
		${orignString?substring(0,1)}${orignString?substring(1,str_length-1)?replace("\\d","*","r")}${orignString?substring(str_length-1,str_length)}
	<#else>
		${orignString}
	</#if>
</#macro>


<#macro timeLeftMacro toEndSec>
	<#assign dayLeft=((toEndSec/86400)?int) hourLeft=(toEndSec/3600)?int%24 minuteLeft=(toEndSec/60)?int%60>
	<#if dayLeft gt 0 >
		<p class="time">剩余时间：<#if dayLeft lt 10 >0${dayLeft}天<#else>${dayLeft}天</#if><#if hourLeft lt 10 >0${hourLeft}小时<#else>${hourLeft}小时</#if><#if minuteLeft lt 10 >0${minuteLeft}分钟<#else>${minuteLeft}分钟</#if></p>
	<#else>
		<p class="time">剩余时间：<span class="less-than-day" data-second="${toEndSec}" data-period=${period}><#if hourLeft lt 10 >0${hourLeft}小时<#else>${hourLeft}小时</#if><#if minuteLeft lt 10 >0${minuteLeft}分钟<#else>${minuteLeft}分钟</#if><#if toEndSec%60 lt 10 >0${toEndSec%60}秒<#else>${toEndSec%60}秒</#if></span></p>
	</#if>
</#macro>


<#include "share.ftl">
<#include "config.ftl">

<#macro htmlStyleSheet sheet, media="screen">
	<link rel="stylesheet" type="text/css" href="${publicPath}/css/${sheet}?${staticVersion}" media="${media}" />
</#macro>

<!-- 公用搜索 -->
<#macro shSearch period>
	<div class="ui-page-search">
		<form id="submitSearch" method="post" action="${basePath}/goods/${period}">
			<input type="submit" class="ui-btn-search fn-right" value="搜索" />
			<input id="key_search" autocomplete="off" name="searchKey" class="ui-input-search" data-keyword="" type="text" maxlength="20" placeholder="请输入商品关键字" />
			<input type="text" class="fn-hide" id="searchGoodsPeriod"  name="goods_period" value="" />
		</form>
	</div>
</#macro>
