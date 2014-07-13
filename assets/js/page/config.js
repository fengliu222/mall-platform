var VERSION = '20140629';
seajs.config({
	alias: {
		
		'es5-safe': 'gallery/es5-safe/0.9.3/es5-safe',
		'json': 'gallery/json/1.0.3/json',
		'$': 'jquery/jquery/1.10.1/jquery',
		'popup': 'arale/popup/1.1.6/popup',
		'confirmBox': 'arale/dialog/1.3.0/confirmbox'
	},

	map: [
		[/^(.*)$/, '$1?t=' + VERSION || '']
	],

	preload: [],

	comboExcludes: /.*/,
	comboSuffix: VERSION ? '?t=' + VERSION : '',

	debug: false
});