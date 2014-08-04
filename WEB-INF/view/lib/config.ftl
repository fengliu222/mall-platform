<#-- 配置项 -->
<#assign version="&t=20140711" />

<#macro htmlScript script type="javascript">
	<script type="text/${type}" src="${publicPath}/assets/js/${script}${version}"></script>
</#macro>