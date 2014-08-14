<table class="u-ranktable">
	{{each list as item index}}
	<tr>
		{{ if index < 3}}
		<td><i class="u-ranktips">{{index+1}}</i></td>
		{{ else}}
		<td></td>
		{{ /if}}
		<td><div class="m-rank-gamename">{{item.gamename}}</div></td>
		<td><div class="m-rank-username">{{item.username}}</div></td>
		<td><div class="m-rank-money">{{item.price}}</div></td>
		<td><div class="m-rank-fans">{{item.fans}}</div></td>
	</tr>
	{{/each}} 
</table>  