/**
 * TODO:
 * ** JS压缩
 * ** LESS编译 √
 * ** Livereload √
 * ** freemarker编译 √
 * ** Css自动前缀 √
 * ** Css sprites合并 √
 * ** 批量图片压缩
 */
'use strict';
var path = require("path");
module.exports = function(grunt) {
	require('load-grunt-tasks')(grunt);
	grunt.initConfig({
		pkg: grunt.file.readJSON('package.json'),

		// 编译less
		less:{
			build: {
				options:{
					cleancss: true
				},
				files: [{
					expand: true,
					cwd: './assets/less',
					src: ['**/*.less','!var.less','!func.less','!reset.less','!core.less','!sprites/*.less'],
					dest: './build/assets/css',
					ext: '.css',
					cleancss:true
				}]
			},
			dev: {
				files: [{
					expand: true,
					cwd: './assets/less',
					src: ['**/*.less','!var.less','!func.less','!reset.less','!core.less','!sprites/*.less'],
					dest: './.tmp/assets/css',
					ext: '.css'
				}]
			}
		},

		// JS压缩
		freemarker: {
			options: {
				views: "WEB-INF/view",
				out: "./.tmp"
			},
			test: {
				src: "mock/ftl/*.js"
			}
		},

		watch: {
			styles: {
				files: ['./assets/less/{,*/}*.less'],
				tasks: ['less:dev','autoprefixer:dev']
			},
			html: {
				files: ['./WEB-INF/view/{,*/}*.ftl'],
				tasks: ['freemarker:test']
			},
			template:{
				files: ['./WEB-INF/view/tpl/**/*.tpl'],
				tasks: ['tmod:dev'],
				options: {
                    spawn: false
                }
			},
			scripts:{
				files: ["./assets/js/**/*.js"],
				tasks: ['copy:scripts']
			},
			images:{
				files: ["./assets/img/**/*.{png,jpg,jpeg,gif,webp,svg}"],
				tasks: ['copy:dev']
			},
			livereload: {
				options: {
					livereload: 35729 // this port must be same with the connect livereload port
				},
				files: [
					'./.tmp/*.html',
					'./.tmp/assets/**/*',
					'./mock/**/*.js',
					'./Gruntfile.js',
					'./assets/img/**/*.{png,jpg,jpeg,gif,webp,svg}'
				]
			},
	      express: {
	        files: [
	          'server.js',
	          'mock/ajax/*.{js,json,coffee,html}'
	        ],
	        tasks: ['express:dev','watch'],
	        options: {
	          livereload: true,
	          nospawn: true //Without this option specified express won't be reloaded
	        }
	      }
		},

		autoprefixer: {
		  build: {
		    expand: true,
		    cwd: './build/assets/css/',
		    src: [ '**/*.css' ],
		    dest: './build/assets/css/'
		  },
		  dev: {
		    expand: true,
		    cwd: './.tmp/assets/css/',
		    src: [ '**/*.css' ],
		    dest: './.tmp/assets/css/'
		  }
		},
		sprite:{
			site: {
		        src: ['./assets/img/index/logo.png','./assets/img/index/tip-lt.png','./assets/img/index/tip-rb.png','./assets/img/index/tab-active.png'],
		        destImg: './assets/img/common/site-sprite.png',
		        destCSS: './assets/less/sprites/site-sprite.less',
		        cssFormat: 'less',
		        imgPath:'@{imgPath}/common/site-sprite.png'
		    },
		    index: {
		        src: ['./assets/img/index/logo-*.png'],
		        destImg: './assets/img/index/index-sprite.png',
		        destCSS: './assets/less/sprites/index-sprite.less',
		        imgPath:'@{imgPath}/index/index-sprite.png',
		        cssFormat: 'less'
		    },
		    index_jpg: {
		        src: ['./assets/img/index/game-pic-*.jpg'],
		        destImg: './assets/img/index/index-game-sprite.jpg',
		        destCSS: './assets/less/sprites/index-sprite.less',
		        imgPath:'@{imgPath}/index/index-game-sprite.jpg',
		        cssFormat: 'less'
		    },
		    gamelogo:{
		    	src: ['./assets/img/index/gamelogo_*.png','./assets/img/index/gamelogo_color_*.png'],
		        destImg: './assets/img/index/gamelogo.png',
		        destCSS: './assets/less/sprites/gamelogo.less',
		        imgPath:'@{imgPath}/index/gamelogo.png',
		        cssFormat: 'less'
		    }
		},
		tmod:{
			dev:{
				src:'./WEB-INF/view/tpl/**/*.tpl',
				dest:'./.tmp/assets/js/template',
				options:{
					base:'./WEB-INF/view/tpl',
					type: "cmd"
				}
			},
			build:{
				src:'./WEB-INF/view/tpl/**/*.tpl',
				dest:'./build/assets/js/template',
				options:{
					base:'./WEB-INF/view/tpl',
					type: "cmd"
				}
			}
		},

		express:{
			options: {
				port: 9000
				
			},
			dev: {
		        options: {
		          script: 'server.js',
		          livereload: 35729,
		          debug: true
		        }
		    }
		},

		copy:{
			dev:{
				files:[{
					expand:true,
					src:['./assets/**/*','!./assets/less/**/*'],
					dest:'./.tmp'
				}]
			},
			build:{
				files:[{
					expand:true,
					src:['./assets','./WEB-INF'],
					dest:'./build'
				}]
			},
			scripts:{
				files:[{
					expand:true,
					src:['./assets/js/**/*','!./assets/js/vendor/**/*'],
					dest:'./.tmp'
				}]
			}
		},

		clean:{
			dev:{
				src:['./.tmp']
			},
			build:{
				src:['./build']
			}
		}
	})

	grunt.registerTask('default',function(target){
		return grunt.task.run(["serve"]);
	})

	grunt.registerTask('lss',["less:build"])

	// Used for delaying livereload until after server has restarted
	  grunt.registerTask('wait', function () {
	    grunt.log.ok('Waiting for server reload...');

	    var done = this.async();

	    setTimeout(function () {
	      grunt.log.writeln('Done waiting!');
	      done();
	    }, 500);
	  });

	  grunt.registerTask('express-keepalive', 'Keep grunt running', function() {
	    this.async();
	  });

	grunt.registerTask('serve', function (target) {
	    grunt.task.run([
	      "clean:dev",
	      "copy:dev",
	      "freemarker:test",
	      "tmod:dev",
	      "less:dev",
	      'autoprefixer:dev',
	      'express:dev',
	      'watch'
	    ]);
	 });
}
