var VERSION = +new Date();
seajs.config({
	paths:{
		'vendor':'/assets/js/vendor',
		'arale':'/assets/js/vendor/arale',
		'template':'/assets/js/template'
	},
	alias: {
		
		'Thenjs':'vendor/then.min',
		'es5-safe': 'gallery/es5-safe/0.9.3/es5-safe',
		'json': 'gallery/json/1.0.3/json',
		'$': 'jquery/jquery/1.10.1/jquery',
		'popup': 'arale/popup/1.1.6/popup',
		'confirmBox': 'arale/dialog/1.3.0/confirmbox',
		'event':'arale/events/1.1.0/events-debug',
		'widget':'arale/widget/1.1.1/widget',
		'validator':'arale/validator/0.9.7/validator',
		'style':'vendor/seajs/seajs-style/1.0.2/seajs-style'
	},

	map: [
		[/^(.*)$/, '$1?t=' + VERSION || '']
	],

	preload: [
		Function.prototype.bind ? '' : 'es5-safe',
    	this.JSON ? '' : 'json',
    	'$',
    	'style'
	],

	comboExcludes: /.*/,
	comboSuffix: VERSION ? '?t=' + VERSION : '',

	debug: false
});

seajs.use("/assets/js/site");
