<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Index</title>
	<link rel="stylesheet" type="text/css" href="${assets}/css/core.css">
</head>
<body>
	<h3>Hello ${name}!</h3>
	<div id="list" data-component="charactor.list" data-component-id="rank.list"></div>

	<script id="seajsnode" src="${assets}/js/vendor/seajs/seajs/2.2.1/sea.js"></script>
	<script src="${assets}/js/vendor/seajs/seajs-combo/1.0.1/seajs-combo.js"></script>
	<script type="text/javascript" src="../assets/js/config.js"></script>
	<script>
		seajs.use("../assets/js/page/index.js")
	</script>
</body>
</html>