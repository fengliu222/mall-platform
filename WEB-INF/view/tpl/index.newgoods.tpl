{{each goods as item index}}
<div class="m-newgoods-item">
	<div class="m-newgoods-img">
		<a href="{{item.src}}"><img src="{{item.img}}" alt="" width="70" height="70"></a>
	</div>
	<div class="m-newgoods-info">
		<a href="{{item.src}}"><h3 class="m-newgoods-name">{{item.name}}</h3></a>
		<div class="m-newgoods-money">
			<p>原价：{{item.gamePrice}}元宝</p>
			<p>售价：{{item.sitePrice}}点</p>
		</div>
	</div>
	<div class="f-clearfix"></div>
</div>
{{/each}}