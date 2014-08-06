var VERSION = +new Date();
seajs.config({
	path:{
		'arale':'./vendor/arale',
		'template':'./vendor/template' 
	},
	alias: {
		
		'es5-safe': 'gallery/es5-safe/0.9.3/es5-safe',
		'json': 'gallery/json/1.0.3/json',
		'$': 'jquery/jquery/1.10.1/jquery',
		'popup': 'arale/popup/1.1.6/popup',
		'confirmBox': 'arale/dialog/1.3.0/confirmbox',
		'event':'arale/events/1.1.0/events-debug',
		'widget':'arale/widget/1.1.1/widget'
	},

	map: [
		[/^(.*)$/, '$1?t=' + VERSION || '']
	],

	preload: [
		Function.prototype.bind ? '' : 'es5-safe',
    	this.JSON ? '' : 'json',
    	'$'
	],

	comboExcludes: /.*/,
	comboSuffix: VERSION ? '?t=' + VERSION : '',

	debug: false
});

seajs.use("../assets/js/site");
